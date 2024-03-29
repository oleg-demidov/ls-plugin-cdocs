<?php

/**
 * Роутинг
 */
$config['$root$']['router']['page']['cdocs'] = 'PluginCdocs_ActionCdocs';
$config['$root$']['router']['page']['ctest'] = 'PluginCdocs_ActionCtest';

$config['components'] = [
    'button',
    'icon',
    'badge',
    'nav',
    'alert',
    'card',
    'breadcrumb',
    'carousel',
    'collapse',
    'accordion',
    'dropdown',
    'field',
    'modal'
];
return $config;