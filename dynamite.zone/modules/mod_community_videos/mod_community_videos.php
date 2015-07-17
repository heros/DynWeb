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

$config = CFactory::getConfig();
$document = JFactory::getDocument();
$isVideoModal = $config->get('video_mode') == 1;

//add style css
JFactory::getLanguage()->isRTL() ? CTemplate::addStylesheet('style.rtl') : CTemplate::addStylesheet('style');

$frontpageVideos = intval($config->get('frontpagevideos',
    5)); /* Fix provide default value to prevent null return if user not apply */
$document->addScriptDeclaration("var frontpageVideos	= " . $frontpageVideos . ";");

$my = CFactory::getUser();
$model = CFactory::getModel('videos');

$limitCount = ($params->get('default')) ? $params->get('default') : 5 * COMMUNITY_OVERSAMPLING_FACTOR;

$permissions = ($my->id == 0) ? 10 : 20;
$permissions = COwnerHelper::isCommunityAdmin() ? 40 : $permissions;

$videosfilter = array(
    'published' => 1,
    'status' => 'ready',
    'permissions' => $permissions,
    'or_group_privacy' => 0,
    'limit' => $limitCount
);

$result = $model->getVideos($videosfilter, true, true, true, false);

$videos = array();
// Bind with video table to inherit its method
foreach ($result as $videoEntry) {
    $video = JTable::getInstance('Video', 'CTable');
    $video->bind($videoEntry);
    $videos[] = $video;
}

if ($videos) {
    shuffle($videos);
    $default = $params->get('default');
    // Test the number of result so the loop will not fail with incorrect index.
    //$total		= count( $videos ) < $default ? count($videos) : $default;
    $videos = array_slice($videos, 0, $default);
}

require(JModuleHelper::getLayoutPath('mod_community_videos', $params->get('layout', 'default')));
