<PCPIN:TPL name="main">
  <html>
    <head>
      <title>PCPIN Template usage examples</title>
    </head>
    <body>
      <b><u>Example 3: Conditional templates</u></b>
      <br /><br />
      The <b>"simplecondition"</b> templates are parsed only if variables<br />
      specified in <b>"conditionvars"</b> attribute are not empty<br />
      according to PHP's <a href="http://www.php.net/manual/en/function.empty.php" target="_blank"><b>empty()</b></a> function.<br /><br />
      <table border="1" cellspacing="0" cellpadding="10">
        <PCPIN:TPL name="test_one" type="simplecondition" requiredvars="BLAH">
          <tr>
            <td align="left">
              This is a template <b>test_one</b>, it requires variable <b>BLAH</b> to be not empty
            </td>
          </tr>
        </PCPIN:TPL>
        <PCPIN:TPL name="test_two" type="simplecondition" requiredvars="FOO,BAR">
          <tr>
            <td align="left">
              This is a template <b>test_two</b>, it requires variables <b>FOO</b> and <b>BAR</b> to be not empty
            </td>
          </tr>
        </PCPIN:TPL>
      </table>
      <br /><br />
      <a href="examples.html">Return to the main page</a>
    </body>
  </html>
</PCPIN:TPL>