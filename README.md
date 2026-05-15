# Práctica UD7 - Conversión y adaptación de documentos

## Introducción 
Este proyecto consiste en un ejercicio de conversión y visualización de datos estructurados utilizando tecnologías como XML, JSON, XSLT, Python, HTML, CSS y JavaScript[cite: 13]. El objetivo es partir de un conjunto de datos, transformarlos entre distintos formatos y utilizarlos para generar páginas web[cite: 14].

## Temática: Los Sapos 
Para esta práctica se ha elegido como temática el estudio de los **sapos**. Los datos incluyen información sobre diversas especies, hábitats y estados de conservación, asegurando una estructura interna completa y no una simple lista plana.

## Partes realizadas 
De acuerdo con las instrucciones, la práctica se ha dividido en las siguientes fases:

* **Elección y obtención de datos**: Se ha generado un conjunto de datos inicial en formato XML sobre distintas especies de sapos.
* **Conversión de formatos**: Se ha utilizado un script de Python para convertir los datos originales de XML a JSON.
* **Transformación XSLT**: Se ha creado una hoja de estilos XSLT para transformar el archivo XML en una página HTML clara y legible.
* **Generación dinámica con JavaScript**: A partir del archivo JSON, se ha desarrollado una página web que carga y muestra los datos dinámicamente mediante JavaScript y CSS.

## Estructura de la práctica 
El repositorio está organizado siguiendo la estructura jerárquica solicitada:

* `README.md`: Breve explicación de la temática y las partes realizadas.
* `datos/`: Contiene el archivo original `datos.xml`, su versión convertida `datos.json` y el script de Python `conversion.py` utilizado para la transformación.
* `xslt/`: Contiene la hoja de estilos `plantilla.xslt`, el script de Python `transformar.py` para aplicar la transformación y el archivo `salida.html` generado.
* `js/`: Contiene la página `index.html`, el script `app.js`, la hoja de estilos `styles.css` y el archivo `datos.json` para la carga dinámica.
