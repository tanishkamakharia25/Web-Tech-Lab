<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
<html>
<head>
<title>College Student Information</title>
<style>
body {
  font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
  background-color: #FAF7F5;
  color: #4A4453;
  padding: 40px 20px;
  margin: 0;
}
h2 {
  text-align: center;
  color: #5E5061;
  font-weight: 600;
  letter-spacing: -0.02em;
  margin-bottom: 28px;
}
.table-wrapper {
  max-width: 860px;
  margin: 0 auto;
  background-color: #FFFFFF;
  border-radius: 16px;
  box-shadow: 0 10px 30px rgba(94, 80, 97, 0.06);
  overflow: hidden;
  border: 1px solid #EFE9E6;
}
table {
  width: 100%;
  border-collapse: collapse;
}
th {
  background-color: #E8D7F1;
  color: #4E3D59;
  font-size: 0.85rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  padding: 16px 20px;
  border: none;
}
td {
  padding: 14px 20px;
  text-align: center;
  font-size: 0.95rem;
  color: #554D56;
  border: none;
  border-bottom: 1px solid #F3ECE8;
}
tr:last-child td {
  border-bottom: none;
}
tr:nth-child(even) {
  background-color: #FBF8FA;
}
tr:hover {
  background-color: #F4EFF8;
  transition: background-color 0.2s ease;
}
</style>
</head>
<body>
<h2>College Student Information</h2>
<div class="table-wrapper">
  <table>
    <thead>
      <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Year</th>
        <th>Marks</th>
      </tr>
    </thead>
    <tbody>
      <xsl:for-each select="college/student">
      <tr>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="department"/></td>
        <td><xsl:value-of select="year"/></td>
        <td><xsl:value-of select="marks"/></td>
      </tr>
      </xsl:for-each>
    </tbody>
  </table>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>