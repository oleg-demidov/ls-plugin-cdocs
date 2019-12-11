{**
 * Отзывы
 *}
{extends '../../layouts/layout.docs.tpl'}


{block 'layout_page_title'}
    <h2 class="page-header">{lang "plugin.cdocs.component"} "{$activeComponent}"</h2>
{/block}
                    
{block 'layout_content' append}
    {component component=$activeComponent template='docs'}
{/block}