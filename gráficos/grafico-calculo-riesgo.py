import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Datos para el análisis de riesgos de Secure Shield Pentesting S.L.
data = {
    'Activo': [
        "Datos Vuln. Clientes (Azure/Portal)", "Datos Vuln. Clientes (Azure/Portal)", "Datos Vuln. Clientes (Azure/Portal)",
        "Portal Cliente Web (Azure)", "Portal Cliente Web (Azure)", "Portal Cliente Web (Azure)",
        "Plataforma Azure (Infra)", "Plataforma Azure (Infra)", "Plataforma Azure (Infra)",
        "Endpoints Pentesters (Portátiles)", "Endpoints Pentesters (Portátiles)", "Endpoints Pentesters (Portátiles)",
        "Servidores On-Premise (Sala)", "Servidores On-Premise (Sala)", "Servidores On-Premise (Sala)",
        "Herramientas Pentesting (SW/Scripts)", "Herramientas Pentesting (SW/Scripts)",
        "Empleados (Todos)", "Empleados (Todos)", "Empleados (Todos)"
    ],
    'Amenaza': [
        "Fuga de información (Acceso no auth.)", "Alteración de informes (Integridad)", "Corrupción/Pérdida (Fallo Azure Storage)",
        "Explotación vulnerabilidad web", "Denegación de Servicio (DDoS)", "Errores de configuración (Despliegue)",
        "Compromiso cred. admin Azure", "Fallo servicio regional Azure", "Config. insegura NSG/Firewall",
        "Malware/Ransomware", "Robo o pérdida física", "Interceptación comunicación (Wi-Fi)",
        "Acceso físico no autorizado", "Fallo hardware / Corte eléctrico", "Exploit vuln. SO no parcheado",
        "Robo o copia no auth. herramientas", "Corrupción herramientas por malware",
        "Ingeniería Social (Phishing Azure)", "Errores humanos (Manejo datos)", "Abuso privilegios empleado"
    ],
    'Probabilidad_Val': [2, 1, 1, 2, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 2, 1, 2, 3, 2, 1],
    'Impacto_Val':      [3, 3, 3, 3, 2, 2, 3, 3, 2, 3, 3, 2, 2, 2, 2, 2, 2, 3, 2, 3],
    'Probabilidad_Txt': ["Medio (2)", "Bajo (1)", "Bajo (1)", "Medio (2)", "Medio (2)", "Medio (2)", "Bajo (1)", "Bajo (1)", "Medio (2)", "Medio (2)", "Bajo (1)", "Bajo (1)", "Bajo (1)", "Bajo (1)", "Medio (2)", "Bajo (1)", "Medio (2)", "Alto (3)", "Medio (2)", "Bajo (1)"],
    'Impacto_Txt':      ["Alto (3)", "Alto (3)", "Alto (3)", "Alto (3)", "Medio (2)", "Medio (2)", "Alto (3)", "Alto (3)", "Medio (2)", "Alto (3)", "Alto (3)", "Medio (2)", "Medio (2)", "Medio (2)", "Medio (2)", "Medio (2)", "Medio (2)", "Alto (3)", "Medio (2)", "Alto (3)"]
}

df = pd.DataFrame(data)
df['Riesgo (P*I)'] = df['Probabilidad_Val'] * df['Impacto_Val']

# Definir función para asignar color basado en el riesgo
def risk_color(val):
    if val >= 9:
        return '#ff0000'  # Rojo (Muy Alto)
    elif val >= 6:
        return '#ff9900'  # Naranja (Alto)
    elif val >= 3:
        return '#ffff00'  # Amarillo (Medio)
    else:
        return '#00cc00'  # Verde (Bajo)

# Definir función para el texto del nivel de riesgo
def risk_level_text(val):
    if val >= 9:
        return 'Muy Alto'
    elif val >= 6:
        return 'Alto'
    elif val >= 3:
        return 'Medio'
    else:
        return 'Bajo'

df['Nivel de Riesgo'] = df['Riesgo (P*I)'].apply(risk_level_text)

# Seleccionar columnas para mostrar en la tabla matplotlib
df_display = df[['Activo', 'Amenaza', 'Probabilidad_Txt', 'Impacto_Txt', 'Riesgo (P*I)', 'Nivel de Riesgo']]
df_display.columns = ['Activo', 'Amenaza', 'Probabilidad', 'Impacto', 'Riesgo', 'Nivel'] # Nombres más cortos para la tabla

# Crear la figura y el eje para la tabla
fig, ax = plt.subplots(figsize=(16, len(df_display) * 0.4 + 1)) # Ajustar tamaño dinámicamente
ax.axis('tight')
ax.axis('off')
ax.set_title("ANÁLISIS DE RIESGOS - Secure Shield Pentesting S.L.", fontweight="bold", fontsize=16, color="white", backgroundcolor="darkred", pad=20)

# Crear la tabla
the_table = ax.table(cellText=df_display.values,
                     colLabels=df_display.columns,
                     loc='center',
                     cellLoc='left',
                     colWidths=[0.25, 0.3, 0.1, 0.1, 0.07, 0.08] # Ajustar anchos de columna
                    )

the_table.auto_set_font_size(False)
the_table.set_fontsize(9)
the_table.scale(1, 1.2) # Escalar un poco la tabla

# Aplicar colores a las celdas de Riesgo
for i in range(len(df_display)):
    riesgo_valor = df.iloc[i]['Riesgo (P*I)']
    cell_color = risk_color(riesgo_valor)
    the_table.get_celld()[(i+1, 4)].set_facecolor(cell_color) # Columna 'Riesgo'
    the_table.get_celld()[(i+1, 5)].set_facecolor(cell_color) # Columna 'Nivel' (se podría usar otro color)

# Estilo para las cabeceras
for (row, col), cell in the_table.get_celld().items():
    if row == 0: # Fila de cabecera
        cell.set_text_props(weight='bold', color='white')
        cell.set_facecolor('dimgray')
    cell.set_edgecolor('gray') # Bordes de celda

plt.tight_layout(pad=1)
# plt.savefig("analisis_riesgos_secure_shield.png", dpi=300, bbox_inches='tight')
plt.show()

print("DataFrame con el análisis de riesgos:")
print(df_display.to_string())