<?php

$config = array();

$config['block']['components'] = array(
    'action' => array(
        'cdocs'
    ),
    'blocks' => array(
        'left' => array(
            'component@cdocs:components.block'    => array('priority' => 100, 'plugin' => 'cdocs')
        )
    )
);


return $config;
