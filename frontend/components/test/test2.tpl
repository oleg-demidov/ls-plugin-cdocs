{**
 * Кнопка
 *
 *}
{extends "component@cdocs:test.layout2"}

{block name="options" append}

{component_define_params params=[ 
    'param21' => '2def111',
    'param22' => '2def222',
    'param23' => '2def333'
]}
{/block}

{block name="content"}
define_params2 = {$define_params|print_r}<br>
params2 = {$params|print_r}<br>
lay21    =   {$lay21}<br>
lay22    =   {$lay22}<br>
lay23    =   {$lay23}<br>
param2-1 = {$param21}<br>
param2-2 = {$param22}<br>
param2-3 = {$param23}<br>
{/block}



