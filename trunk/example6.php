<?php

// Load PcpinTpl class
require_once('./pcpintpl.class.php');

// Declare and initialize template class
$tpl=new PcpinTpl();

// Set templates directory path (absolute or relative)
// This is a directory where all template are stored
$tpl->setBasedir('./templates');

// Load template file
$tpl->readTemplatesFromFile('example6.tpl');


/*******************************************************
 ** Sixth example: External templates
 ******************************************************/


// Parse and display parsed template contents
$tpl->displayParsedTemplate('main');
?>