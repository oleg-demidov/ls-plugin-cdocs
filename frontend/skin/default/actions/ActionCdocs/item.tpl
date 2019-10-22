{**
 * Отзывы
 *}
{extends 'layouts/layout.base.tpl'}


{block 'layout_page_title'}
    <h2 class="page-header">{$componentActive}</h2>
{/block}
                    
{block 'layout_content'}
    {component component=$componentActive template='docs'}
{/block}