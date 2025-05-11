import matplotlib.pyplot as plt
import matplotlib.patches as patches

# Definir las categorías de amenazas y sus listas
threat_categories = {
    "Confidencialidad de Datos y PI": [
        "Fuga de informes de vulnerabilidades",
        "Acceso no autorizado a Azure Storage",
        "Exfiltración por malware en endpoints",
        "Compromiso de cuentas críticas",
        "Robo de metodologías de pentesting",
        "Phishing/Spear-phishing a empleados"
    ],
    "Integridad de Sistemas y Datos": [
        "Manipulación de informes de vulns.",
        "Modificación config. Azure/On-prem",
        "Malware/Ransomware en endpoints/servidores",
        "Errores de configuración en Azure/servidores",
        "Despliegue de código inseguro en portal"
    ],
    "Disponibilidad de Servicios": [
        "DoS/DDoS contra portal cliente/Azure",
        "Corte eléctrico (Servidores On-Prem)",
        "Fallo servicios Cloud (Azure)",
        "Errores de mantenimiento/actualización",
        "Caída del sistema por sobrecarga"
    ],
    "Amenazas Transversales": [
        "Abuso de privilegios de acceso",
        "Acceso no autorizado (externo/interno)",
        "Errores de usuarios/administradores",
        "Indisponibilidad de personal clave"
    ]
}

num_categories = len(threat_categories)
fig, axes = plt.subplots(num_categories, 1, figsize=(10, 2 * num_categories)) # Ajustar figsize
fig.suptitle("Posibles Amenazas para Secure Shield Pentesting S.L.", fontsize=16, weight='bold', color='black')
fig.patch.set_facecolor('lightgray') # Fondo para la figura


for i, (category, threats) in enumerate(threat_categories.items()):
    ax = axes[i] if num_categories > 1 else axes # Manejar caso de una sola categoría
    ax.set_xticks([])
    ax.set_yticks([])
    ax.spines['top'].set_visible(False)
    ax.spines['right'].set_visible(False)
    ax.spines['bottom'].set_visible(False)
    ax.spines['left'].set_visible(False)
    ax.set_facecolor('#f0f0f0') # Color de fondo para cada "tarjeta"

    # Título de la categoría (simulando la barra roja)
    ax.text(0.5, 0.95, category, ha='center', va='top', fontsize=12, color='white',
            bbox=dict(facecolor='darkred', alpha=1, boxstyle='round,pad=0.3'),
            transform=ax.transAxes)

    # Lista de amenazas
    threat_text = "\n".join([f"• {t}" for t in threats])
    ax.text(0.05, 0.80, threat_text, ha='left', va='top', fontsize=9, wrap=True,
            transform=ax.transAxes)

plt.tight_layout(rect=[0, 0, 1, 0.94]) # Ajustar para el suptitle y el texto inferior
plt.show()