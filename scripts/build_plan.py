from pathlib import Path
import re


ROOT = Path(__file__).resolve().parents[1]
BUILD = ROOT / "build"
PUBLIC = ROOT / "public"


def read_text(path):
    return path.read_text(encoding="utf-8-sig")


def write_text(path, text):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def parse_info_yml(path):
    values = {}
    for line in read_text(path).splitlines():
        if not line.strip() or line.lstrip().startswith("#") or ":" not in line:
            continue
        key, raw_value = line.split(":", 1)
        key = key.strip()
        value = raw_value.strip()
        if len(value) >= 2 and value[0] == value[-1] and value[0] in ("'", '"'):
            value = value[1:-1]
        values[key] = value
    return values


def render_mustache(text, values):
    def replace(match):
        key = match.group(1).strip()
        return values.get(key, match.group(0))

    return re.sub(r"\{\{\s*([A-Za-z0-9_]+)\s*\}\}", replace, text)


def plan_sources():
    sources = [
        ROOT / "during.md",
        ROOT / "playbooks" / "index.md",
    ]
    sources.extend(sorted((ROOT / "playbooks").glob("playbook-*.md")))
    sources.append(ROOT / "playbooks" / "diagramas-flujo-playbooks.md")
    sources.append(ROOT / "roles" / "index.md")
    sources.extend(sorted((ROOT / "roles").glob("role-*.md")))
    sources.extend([
        ROOT / "after.md",
        ROOT / "reference" / "glossary.md",
        ROOT / "about.md",
    ])
    return sources


def concatenate(paths):
    chunks = []
    for path in paths:
        chunks.append(read_text(path).rstrip() + "\n")
    return "\n".join(chunks)


def main():
    values = parse_info_yml(ROOT / "info.yml")

    raw_plan = concatenate(plan_sources())
    raw_pandoc = read_text(ROOT / "pandoc.yml")

    write_text(BUILD / "_plan.md", raw_plan)
    write_text(BUILD / "_pandoc.yml", render_mustache(raw_pandoc, values))
    write_text(PUBLIC / "plan.md", render_mustache(raw_plan, values))

    unresolved = sorted(set(re.findall(r"\{\{\s*([A-Za-z0-9_]+)\s*\}\}", read_text(PUBLIC / "plan.md"))))
    print("Generated build/_plan.md")
    print("Generated build/_pandoc.yml")
    print("Generated public/plan.md")
    if unresolved:
        print("Unresolved variables: " + ", ".join(unresolved))
    else:
        print("Unresolved variables: none")


if __name__ == "__main__":
    main()
