<?xml version="1.0"?>
<xsl:stylesheet 
    version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml">    

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/result">
        <html>
            <head>
                <title>Question 2</title>
                <style type="text/css">
                    td {
                       border: 1px dashed black;
                       padding: 10px;
                    }

                    #left {
                        text-align: right;
                        color: grey;
                    }

                    #right {
                        text-align: left;
                        color: darkred;
                        font-size: 30px;
                    }


                </style>
            </head>
            <body>
                <h1>
                    Exam result
                </h1>

                <table border="1">
                    <tr>
                        <td id="left">
                            <xsl:text>Reference number</xsl:text>
                        </td>
                        <td id="right">
                            <xsl:value-of select="@ref"/>
                        </td>
                    </tr>
            
                    <tr>
                        <td id="left">
                            <xsl:text>Exam number</xsl:text>
                        </td>
                        <td id="right">
                            <xsl:value-of select="examId"/>
                        </td>
                    </tr>

                    <tr>
                        <td id="left">
                            <xsl:text>Contestant number</xsl:text>
                        </td>
                        <td id="right">
                            <xsl:value-of select="contestantId"/>
                        </td>
                    </tr>

                    <tr>
                        <td id="left">
                            <xsl:text>Digital signature</xsl:text>
                        </td>
                        <td id="right">
                            <xsl:value-of select="digitalSignature"/>
                        </td>
                    </tr>

                    <tr>
                        <td id="left">
                            <xsl:text>Score</xsl:text>
                        </td>
                        <td id="right">
                            <xsl:value-of select="score"/>
                        </td>
                    </tr>

                    <tr>
                        <td id="left">
                            <xsl:text>Band</xsl:text>
                        </td>
                        <td id="right">
                            <xsl:value-of select="band"/>
                        </td>
                    </tr>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
