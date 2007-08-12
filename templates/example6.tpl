<PCPIN:TPL name="main">
  <html>
    <head>
      <title>PCPIN Template usage examples</title>
    </head>
    <body>
      <b><u>Example 6: Including template files into a template</u></b>
      <br /><br />
      You can load templates from a template file.<br />
      For example, <b>&ltPCPIN:TPL name="blah" src=&quot;some_name.tpl&quot; /&gt</b><br />
      will load a template from file <b>some_name.tpl</b>
      <br /><br />
      <table border="1" cellspacing="0" cellpadding="10">
        <tr>
          <td align="left">
            Here is an external template:
          </td>
          <td align="left">
            <PCPIN:TPL name="i_am_external" src="example6_2.tpl" />
          </td>
        </tr>
      </table>
      <br /><br />
      <a href="examples.html">Return to the main page</a>
    </body>
  </html>
</PCPIN:TPL>