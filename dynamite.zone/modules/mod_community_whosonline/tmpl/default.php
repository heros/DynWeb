<?php
/**
* @copyright (C) 2013 iJoomla, Inc. - All rights reserved.
* @license GNU General Public License, version 2 (http://www.gnu.org/licenses/gpl-2.0.html)
* @author iJoomla.com <webmaster@ijoomla.com>
* @url https://www.jomsocial.com/license-agreement
* The PHP code portions are distributed under the GPL license. If not otherwise stated, all images, manuals, cascading style sheets, and included JavaScript *are NOT GPL, and are released under the IJOOMLA Proprietary Use License v1.0
* More info at https://www.jomsocial.com/license-agreement
*/
// no direct access
defined('_JEXEC') or die('Restricted access');
?>
<div class="joms-js--whoisonline-module">
    <ul class="joms-list--thumbnail clearfix">
        <?php if( count( $onlineMembers ) > 0) { ?>
            <?php for ( $i = 0; $i < count( $onlineMembers ); $i++ ) { ?>
            <?php $row =& $onlineMembers[$i]; ?>
            <li class="joms-list__item">
                <div class="joms-avatar">
                    <a href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid='.$row->id ); ?>">
                        <img src="<?php echo $row->user->getThumbAvatar(); ?>" title="<?php echo CTooltip::cAvatarTooltip($row->user); ?>" alt="<?php echo CStringHelper::escape($row->user->getDisplayName()); ?>" />
                    </a>
                </div>
            </li>
            <?php } ?>

        <?php } else { ?>
            <li class=""><p><?php echo JText::_('COM_COMMUNITY_NO_ONE_ONLINE')?></p></li>
        <?php }?>
    </ul>
    <?php if(count($actualOnlineUsers) > count($onlineMembers)){ ?>
    <div class="joms-gap"></div>
        <a href="<?php echo CRoute::_('index.php?option=com_community&view=search&task=browse'); ?>"><?php echo JText::_('COM_COMMUNITY_SEE_MORE_ONLINE_USER'); ?></a>
    <?php } ?>
</div>
