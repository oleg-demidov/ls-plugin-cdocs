{**
 * Кнопка
 *
 *}
 
 {extends "component@cdocs:test.layout"}

 {block name="options" append}
    {component_define_params params=[ 
        'param1' => 'def111',
        'param2' => 'def222',
        'param3' => 'def333'
    ]}
 {/block}

 {block name="content"} 
    {*{component "cdocs:test.test2"
        param21 = '2-111'
        param22 = '2-222'
        param23 = '2-333'
        lay21   = '2-444'
    }*}
    global vars = {$sHtmlDescription}<br>
    global vars = {$aLang|print_r}<br>
    global_test = {$global_test}<br>
    global_assign_test = {$global_assign_test}<br>
    
    define_params = {$define_params|print_r}<br>
    params = {$params|print_r}<br>
    
    change param lay2 = changedlay2 {$params.lay2 = 'changedlay2'}
    lay1    =   {$lay1}<br>
    lay2    =   {$lay2}<br>
    lay3    =   {$lay3}<br>
    param1 = {$param1}<br>
    param2 = {$param2}<br>
    param3 = {$param3}<br>
 {/block}




