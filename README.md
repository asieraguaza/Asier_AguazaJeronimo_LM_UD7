# Práctica UD7 - Conversión y adaptación de documentos [cite: 1, 2]

## Introducción [cite: 4, 12]
Este proyecto consiste en un ejercicio de conversión y visualización de datos estructurados utilizando tecnologías como XML, JSON, XSLT, Python, HTML, CSS y JavaScript[cite: 13]. [cite_start]El objetivo es partir de un conjunto de datos, transformarlos entre distintos formatos y utilizarlos para generar páginas web[cite: 14].

## Temática: Los Sapos [cite: 17]
Para esta práctica se ha elegido como temática el estudio de los **sapos**[cite: 17]. [cite_start]Los datos incluyen información sobre diversas especies, hábitats y estados de conservación, asegurando una estructura interna completa y no una simple lista plana[cite: 20].

## Partes realizadas [cite: 47]
De acuerdo con las instrucciones, la práctica se ha dividido en las siguientes fases:

* **Elección y obtención de datos**: Se ha generado un conjunto de datos inicial en formato XML sobre distintas especies de sapos[cite: 16, 18, 19].
* **Conversión de formatos**: Se ha utilizado un script de Python para convertir los datos originales de XML a JSON[cite: 22, 48].
* **Transformación XSLT**: Se ha creado una hoja de estilos XSLT para transformar el archivo XML en una página HTML clara y legible[cite: 25, 26, 49].
* **Generación dinámica con JavaScript**: A partir del archivo JSON, se ha desarrollado una página web que carga y muestra los datos dinámicamente mediante JavaScript y CSS[cite: 27, 28, 29, 50].

## Estructura de la práctica [cite: 10, 30]
El repositorio está organizado siguiendo la estructura jerárquica solicitada[cite: 31, 32]:

* `README.md`: Breve explicación de la temática y las partes realizadas[cite: 33, 47].
* `datos/`: Contiene el archivo original `datos.xml`, su versión convertida `datos.json` y el script de Python `conversion.py` utilizado para la transformación[cite: 34, 35, 36, 38, 48].
* `xslt/`: Contiene la hoja de estilos `plantilla.xslt`, el script de Python `transformar.py` para aplicar la transformación y el archivo `salida.html` generado[cite: 37, 39, 40, 41, 49].
* `js/`: Contiene la página `index.html`, el script `app.js`, la hoja de estilos `styles.css` y el archivo `datos.json` para la carga dinámica[cite: 42, 43, 44, 45, 46, 50].
