<?php

// Load PcpinTpl class
require_once('./pcpintpl.class.php');

// Declare and initialize template class
$tpl=new PcpinTpl();

// Set templates directory path (absolute or relative)
// This is a directory where all template are stored
$tpl->setBasedir('./templates');

// Load template file
$tpl->readTemplatesFromFile('example4.tpl');


/*******************************************************
 ** Third example: Subtemplates
 ******************************************************/

// Some templates may have absolutely different contents,
// depending on conditional variable value.
// Such templates are identical to PHP's switch() statement (structure and functionality)


// Let's add an empty number to the template "sub_test"
$tpl->addVar('sub_test', 'my_number', 0);
// ...and parse it
$tpl->parseTemplate('sub_test', 'a');

// Adding -123.45
$tpl->addVar('sub_test', 'my_number', -123.45);
$tpl->parseTemplate('sub_test', 'a');

// Adding a random value between 1 and 99
$tpl->addVar('sub_test', 'my_number', rand(1, 99));
$tpl->parseTemplate('sub_test', 'a');

// Adding 100
$tpl->addVar('sub_test', 'my_number', 100);
$tpl->parseTemplate('sub_test', 'a');



// Parse and display parsed template contents
$tpl->displayParsedTemplate('main');
?>