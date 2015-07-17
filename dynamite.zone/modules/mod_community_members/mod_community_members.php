<?php

    /**
     * @copyright (C) 2013 iJoomla, Inc. - All rights reserved.
     * @license GNU General Public License, version 2 (http://www.gnu.org/licenses/gpl-2.0.html)
     * @author iJoomla.com <webmaster@ijoomla.com>
     * @url https://www.jomsocial.com/license-agreement
     * The PHP code portions are distributed under the GPL license. If not otherwise stated, all images, manuals, cascading style sheets, and included JavaScript *are NOT GPL, and are released under the IJOOMLA Proprietary Use License v1.0
     * More info at https://www.jomsocial.com/license-agreement
     */
    defined('_JEXEC') or die('Restricted access');

    include_once(JPATH_BASE . '/components/com_community/defines.community.php');
    require_once(JPATH_BASE . '/components/com_community/libraries/core.php');

    //add style css
    JFactory::getLanguage()->isRTL() ? CTemplate::addStylesheet('style.rtl') : CTemplate::addStylesheet('style');

    $default = ($params->get('default')) ? $params->get('default') : 15;

    $showTotalMembers = $params->get('show_total_members');

    // show the list of filter based on paramater
    $listFilters = $params->get('list_filters', array('newest', 'featured', 'active', 'popular'));
    foreach ($listFilters as $key => $val) {
        $valLang = $val != 'featured' ? strtoupper($val) . '_MEMBERS' : strtoupper($val);
        $htmlFilters[] = ( $key > 0 ? '<b>&nbsp;&middot;</b> ' : '' )
                       . '<a class="' . $val . '-member" href="javascript:">' . JText::_('COM_COMMUNITY_' . $valLang) . '</a>';
    }

    $defaultFilter = ($params->get('default_filter')) ? $params->get('default_filter') : 'newest';
    if ( ! in_array( $defaultFilter, $listFilters ) ) {
        $defaultFilter = $listFilters[0];
    }

    $config = CFactory::getConfig();
    $document = JFactory::getDocument();
    $frontpageUsers = intval($config->get('frontpageusers', 5));

    $document->addScriptDeclaration("var frontpageUsers	= " . $default . ";");

    $model = CFactory::getModel('user');
    $latestMembers = $model->getLatestMember($default);
    $totalMembers = $model->getMembersCount();

    $data = array();

    if (!empty($latestMembers)) {
        shuffle($latestMembers);
    }

    require(JModuleHelper::getLayoutPath('mod_community_members', $params->get('layout', 'default')));
