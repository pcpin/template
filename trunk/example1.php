<?php

// Load PcpinTpl class
require_once('./pcpintpl.class.php');

// Declare and initialize template class
$tpl=new PcpinTpl();

// Set templates directory path (absolute or relative)
// This is a directory where all template are stored
$tpl->setBasedir('./templates');

// Load template file
$tpl->readTemplatesFromFile('example1.tpl');


/*******************************************************
 ** First example: Setting variables
 ******************************************************/
// Store current date into the template variable DATE
$tpl->addVar('main', 'date', date('d.m.Y'));

// Store current time into the template variable TIME
$tpl->addVar('main', 'time', date('H:i:s'));

// It is also possible to set multiple variables with a single call.
// Variable RANDOM will get random value between 0 and 1000
// and variable IP will get client IP address
$tpl->addVars('main', array('random'=>rand(0, 1000), 'ip'=>$_SERVER['REMOTE_ADDR']));


// Parse and display parsed template contents
$tpl->displayParsedTemplate('main');
?>