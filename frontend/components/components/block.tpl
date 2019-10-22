{**
 * Кнопка
 *
 *}
 
{extends "component@component.layout"}

{block 'options' append}
    {component_define_params params=[ 
        'components'
    ]}
{/block}

{block "content"}
    {$items = []}
    {foreach $components as $component}
        {$items[] = [
            text => $component,
            url => {router page = "cdocs/{$component}"}
        ]}
    {/foreach}
    
    {component "nav" 
        activeItem  = $activeComponent
        items       = $items 
        classes     = "flex-column"}
{/block}

