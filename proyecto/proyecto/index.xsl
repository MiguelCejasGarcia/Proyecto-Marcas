<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Consulta de Escuderías</title>
            </head>
	<nav>
	<a href="./formulario.html">Añadir piloto</a>
<br></br>
	<a href="./formulario2.html">Añadir escuderías</a>
	</nav>
            <body>
                <h1>Consulta de Escuderías</h1>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Escudería</th>
                        <th>Nombre</th>
                        <th>Fundación</th>
                        <th>País</th>
                    </tr>
                    <xsl:for-each select="//escuderias/escuderia">
                        <tr>
                            <td><a href="contacto.php?id={piloto[1]/@id}" class="button"><xsl:value-of select="@id"/></a></td>
                            <td><xsl:value-of select="nombre/text()"/></td>
                            <td><xsl:value-of select="fundacion/text()"/></td>
                            <td><xsl:value-of select="pais/text()"/></td>
                           
			<a href="?id={piloto[1]/@id}">--Eliminar--</a>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>
