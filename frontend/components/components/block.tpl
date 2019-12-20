{**
 * Кнопка
 *
 *}
 
{extends "component@component.layout"}

{block 'options' append}
    {*{component_define_params params=[ 
        'components'
    ]}*}
{/block}

{block "content"}
    {$items = [
        [
            text => 'Главная',
            url => {router page = "cdocs"},
            name => 'index'
        ]
    ]}
    {foreach $components as $component}
        {$items[] = [
            text => $component,
            url => {router page = "cdocs/{$component}"},
            name => $component
        ]}
    {/foreach}
    {component "nav" 
        mods        = "pills"
        activeItem  = $activeComponent
        items       = $items 
        classes     = "flex-column"}
{/block}

