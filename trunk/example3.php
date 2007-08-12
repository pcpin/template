<?php

// Load PcpinTpl class
require_once('./pcpintpl.class.php');

// Declare and initialize template class
$tpl=new PcpinTpl();

// Set templates directory path (absolute or relative)
// This is a directory where all template are stored
$tpl->setBasedir('./templates');

// Load template file
$tpl->readTemplatesFromFile('example3.tpl');


/*******************************************************
 ** Third example: Conditional templates
 ******************************************************/

// The "simplecondition" templates are parsed only if variables
// specified in "conditionvars" attribute are not empty
// according to PHP's empty() function.

// Template "test_one" will be parsed and displayed,
// because BLA variable is not empty
$tpl->addVar('test_one', 'blah', true);

// Template "test_two" has two required variables: FOO and BAR
// Let set variable FOO:
$tpl->addVar('test_two', 'foo', 100);

// Template "test_two" will not be parsed, because
// the variable BAR is still empty. Let set it too:
$tpl->addVar('test_two', 'bar', 'Hello World!');

// OK. All templates have their requiredvars not empty and will be displayed :)

// Parse and display parsed template contents
$tpl->displayParsedTemplate('main');
?>