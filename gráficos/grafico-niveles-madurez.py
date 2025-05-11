import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

# Datos para Secure Shield Pentesting S.L.
medidas = [
    "Gestión de Identidad y Acceso (Azure AD)",
    "Seguridad de la Plataforma Azure",
    "Seguridad del Área de Cliente Web (Portal)",
    "Protección de Datos Críticos de Clientes",
    "Seguridad de Endpoints (Pentesters)",
    "Gestión de Vulnerabilidades (Interna)",
    "Copias de Seguridad y Recuperación",
    "Políticas de Seguridad de la Información",
    "Seguridad de Servidores On-Premise"
]
madurez_actual = [65, 70, 60, 75, 70, 60, 80, 50, 65]
madurez_esperada = [90, 95, 90, 95, 90, 90, 95, 90, 85]

df = pd.DataFrame({
    'Medida': medidas,
    '% de madurez': madurez_actual,
    '% de madurez esperado': madurez_esperada
})

# Para graficar lado a lado, necesitamos "derretir" el dataframe
df_melted = df.melt(id_vars='Medida', var_name='Tipo de Madurez', value_name='Porcentaje')

plt.figure(figsize=(14, 8))
sns.set_style("darkgrid") # Estilo similar al de tu imagen de ejemplo

barplot = sns.barplot(x='Medida', y='Porcentaje', hue='Tipo de Madurez', data=df_melted, palette=['royalblue', 'red'])

plt.xlabel("Medida de Seguridad", fontsize=12)
plt.ylabel("Porcentaje (%)", fontsize=12)
plt.title("Nivel de Madurez de Ciberseguridad - Secure Shield Pentesting S.L.", fontsize=16, weight='bold')
plt.xticks(rotation=45, ha="right", fontsize=10)
plt.yticks(np.arange(0, 101, 10), fontsize=10)
plt.ylim(0, 100) # Asegurar que el eje Y va de 0 a 100

# Añadir etiquetas de porcentaje encima de las barras
for p in barplot.patches:
    barplot.annotate(format(p.get_height(), '.0f') + '%',
                     (p.get_x() + p.get_width() / 2., p.get_height()),
                     ha = 'center', va = 'center',
                     xytext = (0, 9),
                     textcoords = 'offset points', fontsize=9)

plt.legend(title='Tipo de Madurez', loc='upper left', bbox_to_anchor=(1,1))
plt.tight_layout(rect=[0,0,0.85,1]) # Ajustar layout para que la leyenda no se corte
plt.show()