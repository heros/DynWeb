<?php
/**
 * @copyright (C) 2013 iJoomla, Inc. - All rights reserved.
 * @license GNU General Public License, version 2 (http://www.gnu.org/licenses/gpl-2.0.html)
 * @author iJoomla.com <webmaster@ijoomla.com>
 * @url https://www.jomsocial.com/license-agreement
 * The PHP code portions are distributed under the GPL license. If not otherwise stated, all images, manuals, cascading style sheets, and included JavaScript *are NOT GPL, and are released under the IJOOMLA Proprietary Use License v1.0
 * More info at https://www.jomsocial.com/license-agreement
 */
// Disallow direct access to this file
defined('_JEXEC') or die('Restricted access');

jimport( 'joomla.application.component.view' );

/**
 * Configuration view for JomSocial
 */
class CommunityViewThemeprofile extends JViewLegacy
{
    public function display( $tpl = null )
    {
        // Set the titlebar text
        JToolBarHelper::title( JText::_('COM_COMMUNITY_CONFIGURATION_THEME_PROFILE'), 'profile');
        JToolBarHelper::apply();
        JToolBarHelper::cancel();

        // Get Moods by type (preset & custom)
        $scssTable= JTable::getInstance( 'Theme' , 'CommunityTable' );
        $this->assign('settings', $scssTable->getByKey('settings'));
        $profile = $this->getModel('Profiles');
        $fields  = $profile->getFields();
        $config = CFactory::getConfig();

        foreach($fields as $field) {
            $fieldsById[$field->id] = $field;
        }

        $this->config = $config;
        $this->assign('fields', $fields);
        $this->assign('fieldsById', $fieldsById);
        parent::display( $tpl );
    }
}