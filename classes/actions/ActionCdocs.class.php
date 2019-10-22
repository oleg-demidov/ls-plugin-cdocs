<?php
/*
 * LiveStreet CMS
 * Copyright © 2013 OOO "ЛС-СОФТ"
 *
 * ------------------------------------------------------
 *
 * Official site: www.livestreetcms.com
 * Contact e-mail: office@livestreetcms.com
 *
 * GNU General Public License, version 2:
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 *
 * ------------------------------------------------------
 *
 * @link http://www.livestreetcms.com
 * @copyright 2013 OOO "ЛС-СОФТ"
 * @author Oleg Demidov 
 *
 */

/**
 * Экшен обработки ajax запросов
 * Ответ отдает в JSON фомате
 *
 * @package actions
 * @since 1.0
 */
class PluginCdocs_ActionCdocs extends Action{
    
    public function Init()
    {
        $this->SetDefaultEvent('index');
    }
    
    protected function RegisterEvent()
    {
        $this->AddEventPreg('/^(index)?$/i','EventIndex');
        $this->AddEventPreg('/^(\w+)?$/i','EventItem');
    }
    
    public function EventIndex() 
    {
        
    }
    
    public function EventItem() 
    {
        if(!in_array($this->sCurrentEvent, Config::Get('plugin.cdocs.components'))){
            $this->Message_AddNotice("Component {$this->sCurrentEvent} not found");
            return $this->EventIndex();
        }
        
        $this->SetTemplateAction('item');
        $this->assign('componentActive', $this->sCurrentEvent);
    }
    
    public function EventShutdown() {
        $this->assign('components', Config::Get('plugin.cdocs.components'));
    }
}