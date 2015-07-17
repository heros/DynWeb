<?php
/**
* @copyright (C) 2013 iJoomla, Inc. - All rights reserved.
* @license GNU General Public License, version 2 (http://www.gnu.org/licenses/gpl-2.0.html)
* @author iJoomla.com <webmaster@ijoomla.com>
* @url https://www.jomsocial.com/license-agreement
* The PHP code portions are distributed under the GPL license. If not otherwise stated, all images, manuals, cascading style sheets, and included JavaScript *are NOT GPL, and are released under the IJOOMLA Proprietary Use License v1.0
* More info at https://www.jomsocial.com/license-agreement
*/
defined('_JEXEC') or die();
    //type 1 : confirmed guest, type 6 = request invitation
    $title = ($type == 1) ? JText::_('COM_COMMUNITY_EVENTS_CONFIRMED_GUESTS') : JText::_('COM_COMMUNITY_REQUESTED_INVITATION');
?>
<div class="joms-page">
    <h3 class="joms-page__title"><?php echo $title; ?></h3>

    <?php if( $guests ) { ?>
    <div id="notice" class="alert alert-notice" style="display:none;">
        <a class="close" data-dismiss="alert">×</a>
        <div id="notice-message"></div>
    </div>

    <ul class="joms-list--friend">
    <?php foreach( $guests as $guest ){ ?>
        <li id="member_<?php echo $guest->id;?>" class="joms-list__item">
            <?php  if (in_array($guest->id, $featuredList)) { ?>
            <div class="joms-ribbon__wrapper">
                <span class="joms-ribbon"><?php echo JText::_('COM_COMMUNITY_FEATURED'); ?></span>
            </div>
            <?php } ?>
            <div class="joms-list__avatar">
                <a class="joms-avatar" href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid=' . $guest->id); ?>">
                    <img src="<?php echo $guest->getThumbAvatar(); ?>" alt="<?php echo $guest->getDisplayName(); ?>" />
                </a>
            </div>

            <div class="joms-list__body">
                <?php echo CFriendsHelper::getUserCog($guest->id,null,$eventid,true); ?>
                <a href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid=' . $guest->id); ?>">
                    <h4 class="joms-text--username"><?php echo $guest->getDisplayName(); ?></h4>
                </a>

                <span class="joms-text--title">
                    <?php echo $guest->friendsCount;?> <?php  echo JText::sprintf( (CStringHelper::isPlural($guest->friendsCount)) ? 'COM_COMMUNITY_FRIENDS_COUNT_MANY' : 'COM_COMMUNITY_FRIENDS_COUNT', $guest->friendsCount);?>
                </span>
                        <div class="joms-list__actions">
                            <?php echo CFriendsHelper::getUserCog($guest->id,null,$eventid,true); ?>
                            <?php // echo CFriendsHelper::getUserFriendDropdown($guest->id); ?>
                        </div>
            </div>

            <?php if($type == 6) { ?>
            <div class="joms-list__button--dropdown">
                <button class="joms-button--neutral joms-button--smallest" onclick="joms.api.eventRejectGuest('<?php echo $eventid; ?>', '<?php echo $guest->id ?>');"><?php echo JText::_('COM_COMMUNITY_FRIENDS_PENDING_ACTION_REJECT'); ?></button>
                <button class="joms-button--primary joms-button--smallest" onclick="jax.call('community','events,ajaxApproveInvite', '<?php echo $guest->id ?>' , '<?php echo $eventid; ?>');"><?php echo JText::_('COM_COMMUNITY_PENDING_ACTION_APPROVE'); ?></button>
            </div>
            <?php } ?>
        </li>
    <?php } ?>
    </ul>

    <?php } else { ?>
    <div class="joms-alert"><?php echo JText::_('COM_COMMUNITY_EVENTS_NO_USERS'); ?></div>
    <?php } ?>

    <?php if ($pagination->getPagesLinks() && ($pagination->pagesTotal > 1 || $pagination->get('pages.total') > 1) ) { ?>
        <div class="joms-pagination">
            <?php echo $pagination->getPagesLinks(); ?>
        </div>
    <?php } ?>
</div>
