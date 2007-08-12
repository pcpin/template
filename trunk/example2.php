<?php

// Load PcpinTpl class
require_once('./pcpintpl.class.php');

// Declare and initialize template class
$tpl=new PcpinTpl();

// Set templates directory path (absolute or relative)
// This is a directory where all template are stored
$tpl->setBasedir('./templates');

// Load template file
$tpl->readTemplatesFromFile('example2.tpl');


/*******************************************************
 ** Second example: Using templates in loops
 ******************************************************/

// Let's display a table with 3 rows and 5 random values in each row

for($row_nr=1; $row_nr<=3; $row_nr++){ // Rows
  // Display row number
  $tpl->addVar('rows', 'row_number', $row_nr);
  for($value_nr=1; $value_nr<=5; $value_nr++){ // Values
    // Display values (random number between 0 and 100)
    $tpl->addVar('values', 'value', rand(0, 100));
    // Parse "values" template
    // Second parameter 'a' is a flag that makes parsed contents
    // to be appended to previously parsed contents of a template
    $tpl->parseTemplate('values', 'a');
  }
  // Append row to the table
  $tpl->parseTemplate('rows', 'a');
  // Clear "values" template
  $tpl->clearTemplate('values');
}


// Parse and display parsed template contents
$tpl->displayParsedTemplate('main');
?>