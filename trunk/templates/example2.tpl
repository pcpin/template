<PCPIN:TPL name="main">
  <html>
    <head>
      <title>PCPIN Template usage examples</title>
    </head>
    <body>
      <b><u>Example 2: Using templates in loops</u></b>
      <br /><br />
      The table with 3 rows with 5 random values in each row:
      <br />
      <table border="1" cellspacing="0" cellpadding="10">
        <PCPIN:TPL name="rows">
          <tr>
            <td align="left">
              <b>Random values row {ROW_NUMBER}:</b>
            </td>
            <PCPIN:TPL name="values">
              <td align="center">
                {VALUE}
              </td>
            </PCPIN:TPL>
          </tr>
        </PCPIN:TPL>
      </table>
      <br />
      <a href="example2.php">Reload this page</a>
      <br /><br />
      <a href="examples.html">Return to the main page</a>
    </body>
  </html>
</PCPIN:TPL>