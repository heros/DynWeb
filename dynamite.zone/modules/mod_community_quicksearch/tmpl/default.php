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

?>

<form  name="search" class="joms-form" id="cFormSearch" method="get" action="<?php echo CRoute::_('index.php?option=com_community&view=search');?>">

    <!-- <svg viewBox="0 0 16 16" class="joms-icon">
        <use xlink:href="#joms-icon-search"></use>
    </svg> -->
    <input type="text" class="joms-input reset-gap" id="keyword" name="q" placeholder="<?php echo JText::_('COM_COMMUNITY_SEARCH')?>" />

	<input type="hidden" name="option" value="com_community" />
	<input type="hidden" name="view" value="search" />
</form>

