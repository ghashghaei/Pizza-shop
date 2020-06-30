<?php

defined('_JEXEC') or die;

function modChrome_title($module, &$params, &$attribs)
{
	if ($module->content)
	{
		echo '';
		echo $module->content;
	}
}

function modChrome_no($module, &$params, &$attribs)
{
	if ($module->content)
	{
		echo $module->content;
	}
}

function modChrome_well($module, &$params, &$attribs)
{
	if ($module->content)
	{
		$moduleTag     = $params->get('module_tag', 'div');
		$bootstrapSize = (int) $params->get('bootstrap_size');
		$moduleClass   = $bootstrapSize ? ' span' . $bootstrapSize : '';
		$headerTag     = htmlspecialchars($params->get('header_tag', 'h2'), ENT_COMPAT, 'UTF-8');

		// Temporarily store header class in variable
		$headerClass   = $params->get('header_class');
		$headerClass   = $headerClass ? ' ' . htmlspecialchars($headerClass, ENT_COMPAT, 'UTF-8') : '';

		echo '<' . $moduleTag . ' class="uk-margin-large-bottom' . $moduleClass . '">';

			echo $module->content;
		echo '</' . $moduleTag . '>';
	}
}
