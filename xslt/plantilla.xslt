<?xml version="1.0" encoding="UTF-8"?>

<!--
    Hoja de estilos XSLT.
    Sirve para transformar el documento XML de países en un documento HTML.
-->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--
        Indicamos que la salida será HTML.
        - method="html": genera un documento HTML
        - encoding="UTF-8": codificación de salida
        - indent="yes": intenta dejar el resultado bien tabulado
    -->
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!--
        Esta plantilla se aplica al nodo raíz del documento.
        Es decir, arranca la transformación desde el principio del XML.
    -->
    <xsl:template match="/">

        <!--
            A partir de aquí construimos directamente el HTML de salida.
            Todo lo que aparece como etiquetas normales HTML se copiará al resultado.
        -->
        <html>
            <head>
                <!--
                    Metadatos del documento HTML generado.
                -->
                <meta charset="UTF-8"/>
                <title>Sapos</title>
            </head>
            <body>
                <!--
                    Título principal de la página.
                -->
                <h1>Sapos</h1>

                <!--
                    Creamos una tabla HTML para mostrar la información.
                    El atributo border="1" se usa solo para que se vea claramente.
                -->
                <table border="1">

                    <!--
                        Primera fila de la tabla: cabecera.
                        Aquí escribimos los nombres de las columnas.
                    -->
                    <tr>
                        <th>Nombre</th>
                        <th>Especie</th>
                        <th>Edad</th>
                        <th>Peso</th>
                        <th>Longitud</th>
                        <th>Habitat</th>
                        <th>Color</th>
                        <th>Habitat</th>
                        <th>Dieta</th>
                        <th>Esperanza de vida</th>
                        <th>Velocidad</th>
                    </tr>

                    <!--
                        Recorremos todos los nodos <pais> que estén dentro de <paises>.
                        Por cada país encontrado, se generará una fila de la tabla.
                    -->
                    <xsl:for-each select="sapos/sapo">

                        <!--
                            Cada país genera una fila nueva.
                        -->
                        <tr>

                            <!--
                                xsl:value-of extrae el contenido de texto
                                del nodo indicado en select.
                            -->
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>

                            <td>
                                <xsl:value-of select="especie"/>
                            </td>

                            <td>
                                <xsl:value-of select="edad"/>
                            </td>

                            <td>
                                <xsl:value-of select="peso"/>
                            </td>

                            <td>
                                <xsl:value-of select="longitud"/>
                            </td>

                            <td>
                                <xsl:value-of select="habitat"/>
                            </td>

                            <td>
                                <xsl:value-of select="color"/>
                            </td>
                            
                            <td>
                                <xsl:value-of select="habitat"/>
                            </td>

                            <td>
                                <xsl:value-of select="dieta"/>
                            </td>

                            <td>
                                <xsl:value-of select="esperanza_vida"/>
                            </td>

                            <td>
                                <xsl:value-of select="velocidad"/>
                            </td>

                        </tr>

                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>