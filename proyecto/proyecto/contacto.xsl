<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Perfil piloto</title>
      <style>
        table {
          width: 50%;
          border-collapse: collapse;
          margin-top: 20px;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <h1>Piloto</h1>
      <table>
	<th>id</th>
	<td><xsl:value-of select="piloto/@id"/></td>
	<th>Escudería</th>
        <td><xsl:value-of select="piloto/@escuderia"/></td>

          <th>Nombre</th>
          <td><xsl:value-of select="piloto/nombre/text()"/></td>
	<th>Edad</th>
	<td><xsl:value-of select="piloto/edad/text()"/></td>
	<th>Nacionalidad</th>
        <td><xsl:value-of select="piloto/nacionalidad/text()"/></td>
  <th>Campeón</th>
  <td><xsl:value-of select="piloto/campeon/text()"/></td>
      </table>
<br></br>
    </body>
<a href="./index.php">Volver</a>
  </html>
</xsl:template>

</xsl:stylesheet>
