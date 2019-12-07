{**
 * Кнопка
 *
 *}

{component_define_params params=[ 
    'param1' => 'def111',
    'param2' => 'def222',
    'param3' => 'def333'
]}

{component "cdocs:test.test2"
    param21 = '2-111'
    param22 = '2-222'
    param23 = '2-333'
}

params = {$params|print_r}<br>
param1 = {$param1}<br>
param2 = {$param2}<br>
param3 = {$param3}<br>

