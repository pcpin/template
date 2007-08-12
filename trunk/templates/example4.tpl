<PCPIN:TPL name="main">
  <html>
    <head>
      <title>PCPIN Template usage examples</title>
    </head>
    <body>
      <b><u>Example 4: Subtemplates</u></b>
      <br /><br />
      Some templates may have absolutely different contents,<br />
      depending on conditional variable value.<br />
      Such templates are identical to PHP's <a href="http://www.php.net/manual/en/control-structures.switch.php" target="_blank"><b>switch()</b></a> statement (structure and functionality)<br />
      <br /><br />
      <table border="1" cellspacing="0" cellpadding="10">
        <PCPIN:TPL name="sub_test" type="condition" conditionvar="MY_NUMBER">
          <PCPIN:SUB condition="empty">
            <tr>
              <td align="left">
                Variable <b>MY_NUMBER</b> is empty
              </td>
            </tr>
          </PCPIN:SUB>
          <PCPIN:SUB condition="100">
            <tr>
              <td align="left">
                Variable <b>MY_NUMBER</b> has value <b>100</b>
                We like it :)
              </td>
            </tr>
          </PCPIN:SUB>
          <PCPIN:SUB condition="-123.45">
            <tr>
              <td align="left">
                Variable <b>MY_NUMBER</b> has value <b>-123.45</b>
                It is definitely too few :(
              </td>
            </tr>
          </PCPIN:SUB>
          <PCPIN:SUB condition="default">
            <tr>
              <td align="left">
                Variable <b>MY_NUMBER</b> is not empty ({MY_NUMBER}):
                there is no pre-defined <b>SUB</b>template for this value: using <b>&quot;default&quot;</b> <b>SUB</b>template condition.
              </td>
            </tr>
          </PCPIN:SUB>
        </PCPIN:TPL>
      </table>
      <br /><br />
      <a href="examples.html">Return to the main page</a>
    </body>
  </html>
</PCPIN:TPL>