<?php

// Load PcpinTpl class
require_once('./pcpintpl.class.php');

// Declare and initialize template class
$tpl=new PcpinTpl();

// Set templates directory path (absolute or relative)
// This is a directory where all template are stored
$tpl->setBasedir('./templates');

// Load template file
$tpl->readTemplatesFromFile('example5.tpl');


/*******************************************************
 ** Fifth example: Global variables
 ******************************************************/
// If you want to add a variable to all templates and subtemplates,
// then you can use GLOBAL template variables.
// Once added to a template object, they will be accessible in all
// subtemplates within that object.


// Lets add gloval variable RANDOM_NUMBER to all templates
$tpl->addGlobalVar('random_number', rand(0, 1000));


// Parse and display parsed template contents
$tpl->displayParsedTemplate('main');
?>