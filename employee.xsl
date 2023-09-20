<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Employee List</title>
      </head>
      <body>
        <h1>Employee List</h1>
        <ul>
          <xsl:for-each select="employees/employee">
            <li>
              <strong>Name:</strong> <xsl:value-of select="Name"/><br/>
              <strong>Department:</strong> <xsl:value-of select="department"/><br/>
              <strong>Job Title:</strong> <xsl:value-of select="jobtitle"/><br/>
              <strong>Salary:</strong> <xsl:value-of select="salary"/><br/>
              <strong>Email:</strong> <a href="mailto:{email}"><xsl:value-of select="email"/></a><br/>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>