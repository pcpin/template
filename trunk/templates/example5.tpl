<PCPIN:TPL name="main">
  <html>
    <head>
      <title>PCPIN Template usage examples</title>
    </head>
    <body>
      <b><u>Example 5: Global variables</u></b>
      <br /><br />
      If you want to add a variable to all templates and subtemplates,<br />
      then you can use <b>GLOBAL</b> template variables.<br />
      Once added to a template object, they will be accessible in all<br />
      subtemplates within that object.<br />
      <b>NOTE:</b> Global variables does not affect conditional templates and SUBtemplates
      <br /><br />
      <table border="1" cellspacing="0" cellpadding="10">
        <PCPIN:TPL name="test_one">
          <tr>
            <td align="left">
              This is a template <b>test_one</b>, variable <b>RANDOM_NUMBER</b> has value {RANDOM_NUMBER}
            </td>
          </tr>
        </PCPIN:TPL>
        <PCPIN:TPL name="test_two">
          <tr>
            <td align="left">
              This is a template <b>test_two</b>, variable <b>RANDOM_NUMBER</b> has value {RANDOM_NUMBER}
            </td>
          </tr>
        </PCPIN:TPL>
      </table>
      <br /><br />
      <a href="examples.html">Return to the main page</a>
    </body>
  </html>
</PCPIN:TPL>