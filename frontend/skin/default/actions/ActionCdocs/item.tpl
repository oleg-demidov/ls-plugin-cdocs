{**
 * Отзывы
 *}
{extends 'layouts/layout.base.tpl'}


{block 'layout_page_title'}
    <h1 class="page-header">{lang "plugin.cdocs.title"}</h1>
{/block}
                    
{block 'layout_content'}
    {function test_heading}
        <h5>{$text}</h5>
    {/function}

    {function test_example code='' content=''}
        <div class="p-docs-example">

            <div class="p-docs-example-content">
                {$content}
            </div>
            <br>

            {if $code}
                <pre style="background: #e2e2e2; padding: 20px;"><code>{$code|escape}</code></pre>
            {/if}
        </div>
    {/function}

    {function test_code}
        <pre><code>{rtrim($code|escape)}</code></pre>
    {/function}

    {function plugin_docs_params params=[]}
        <table class="ls-table">
            <thead>
                <tr>
                    <th>Параметр</th>
                    <th>Тип</th>
                    <th>По&nbsp;умолчанию</th>
                    <th>Описание</th>
                </tr>
            </thead>
            <tbody>
                {foreach $params as $param}
                    <tr>
                        <td><code>{$param[0]}</code></td>
                        <td>{$param[1]}</td>
                        <td>{$param[2]}</td>
                        <td>{$param[3]}</td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    {/function}

    {function plugin_docs_params_short params=[]}
        <table class="ls-table">
            <thead>
                <tr>
                    <th>Параметр</th>
                    <th>Описание</th>
                </tr>
            </thead>
            <tbody>
                {foreach $params as $param}
                    <tr>
                        <td><code>{$param[0]}</code></td>
                        <td>{$param[1]}</td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    {/function}

    {function plugin_docs_api_file title='' items=[]}
        {component 'details' template='group' classes='js-plugin-docs-api-file' items=$items}
    {/function}

    <h2 class="page-header">{lang "plugin.cdocs.component"} "{$activeComponent}"</h2>
    {component component=$activeComponent template='docs'}
{/block}