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
    include_once(COMMUNITY_COM_PATH . '/libraries/activities.php');
    include_once(COMMUNITY_COM_PATH . '/helpers/time.php');

    JFactory::getLanguage()->isRTL() ? CTemplate::addStylesheet('style.rtl') : CTemplate::addStylesheet('style');

    $activities = new CActivityStream();
    $maxEntry = $params->get('max_entry', 10);

    $stream = $activities->getHTML('', '', null, $maxEntry, '');

    require(JModuleHelper::getLayoutPath('mod_activitystream', $params->get('layout', 'default')));
