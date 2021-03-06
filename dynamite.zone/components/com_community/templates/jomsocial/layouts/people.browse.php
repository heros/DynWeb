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
//CFactory::load( 'libraries' , 'messaging' );

?>
    <!-- Advanced Search Results -->
    <div class="joms-page">
        <div class="joms-list__search">
            <span>
                <h3 class="joms-page__title"><?php echo JText::_('COM_COMMUNITY_ALL_MEMBERS')?></h3>
            </span>

            <div class="joms-list__utilities">
                <form method="post" class="joms-inline--desktop" action="<?php echo CRoute::_('index.php?option=com_community&view=search') ?>">
                    <span>
                        <input type="text" name="q" class="joms-input--search" value="<?php echo (isset($searchQuery)) ? $searchQuery : ''; ?>"
                           placeholder="<?php echo JText::_('COM_COMMUNITY_SEARCH_PEOPLE_PLACEHOLDER'); ?>">
                    </span>
                    <span>
                        <button class="joms-button--neutral"><?php echo JText::_('COM_COMMUNITY_SEARCH_GO'); ?></button>
                    </span>
                    <input type="hidden" name="search" value="friends">
                </form>
                <button onclick="window.location='<?php echo CRoute::_('index.php?option=com_community&view=friends&task=invite'); ?>';" class="joms-button--add">
                    <span><?php echo JText::_('COM_COMMUNITY_INVITE_FRIENDS'); ?></span>
                    <svg class="joms-icon" viewBox="0 0 16 16">
                        <use xlink:href="<?php echo CRoute::getURI(); ?>#joms-icon-plus"/>
                    </svg>
                </button>
            </div>
        </div>

        <?php if ( $sortings ) { ?>
            <?php echo $sortings; ?>
            <div class="joms-gap"></div>
        <?php } ?>
        <?php echo isset($submenu) ? $submenu : ""; ?>
        <ul class="joms-list--friend">
        <?php
        $blockModel = CFactory::getModel('block');

        foreach( $data as $row ) : ?>
            <?php $displayname = $row->user->getDisplayName(); ?>
            <?php if(!empty($row->user->id) && !empty($displayname)) : ?>
            <li class="joms-list__item">
                <?php  if (is_array($featuredList) && in_array($row->user->id, $featuredList)) { ?>
                <div class="joms-ribbon__wrapper">
                    <span class="joms-ribbon"><?php echo JText::_('COM_COMMUNITY_FEATURED'); ?></span>
                </div>
                <?php } ?>
                <!-- avatar -->
                <div class="joms-list__avatar">
                    <a href="<?php echo $row->profileLink; ?>" class="joms-avatar">
                        <img src="<?php echo $row->user->getThumbAvatar(); ?>" alt="<?php echo $row->user->getDisplayName(); ?>" />
                    </a>
                </div>
                <div class="joms-list__body">
                    <!-- name -->
                    <a href="<?php echo $row->profileLink; ?>"><h4 class="joms-text--username"><?php echo $row->user->getDisplayName(); ?></h4></a>

                    <!-- friends count -->
                    <span class="joms-text--title">
                        <?php echo $row->friendsCount;?> <?php  echo JText::sprintf( (CStringHelper::isPlural($row->friendsCount)) ? 'COM_COMMUNITY_FRIENDS_COUNT_MANY' : 'COM_COMMUNITY_FRIENDS_COUNT', $row->friendsCount);?>
                    </span>

                </div>
                <div class="joms-list__actions">

                    <?php echo CFriendsHelper::getUserCog($row->user->id,null,null,true); ?>

                    <?php echo CFriendsHelper::getUserFriendDropdown($row->user->id); ?>

<!--                     <?php
                    $blockedByMe = $blockModel->getBlockStatus($my->id, $row->user->id);
                    if($row->addFriend && !$blockedByMe) {
                        $isWaitingApproval = CFriendsHelper::isWaitingApproval($my->id, $row->user->id);
                    ?>

                    <?php if(isset($row->isMyFriend) && $row->isMyFriend==1) { ?>
                        <a class="joms-button--neutral joms-button--small" href="javascript:void(0)" onclick="joms.api.friendAdd('<?php echo $row->user->id;?>')"><?php echo JText::_('COM_COMMUNITY_PROFILE_PENDING_FRIEND_REQUEST'); ?></a>
                    <?php } else { ?>
                        <?php if(!$isWaitingApproval){?>
                            <a class="joms-button--primary joms-button--small" href="javascript:" onclick="joms.api.friendAdd('<?php echo $row->user->id;?>')"><?php echo JText::_('COM_COMMUNITY_PROFILE_ADD_AS_FRIEND'); ?></a>
                        <?php } else { ?>
                            <span class="joms-text--title"><?php echo JText::_('COM_COMMUNITY_PROFILE_PENDING_FRIEND_REQUEST'); ?></span>
                        <?php }?>
                    <?php } ?>

                    <?php } elseif(!$blockedByMe) { ?>
                        <?php if(($my->id != $row->user->id) && ($my->id !== 0)) { ?>
                            <span class="joms-text--title"><?php echo JText::_('COM_COMMUNITY_PROFILE_ADDED_AS_FRIEND'); ?></span>
                    <?php } } elseif($blockedByMe) { ?>
                        <span class="joms-text--title"><?php echo JText::_('COM_COMMUNITY_YOU_HAD_BLOCKED_THIS_USER'); ?></span>
                    <?php  } ?> -->

                </div>
            </li>
            <?php endif; ?>
        <?php endforeach; ?>

        </ul>

        <?php if(empty($data)){ ?>
            <div class="joms-gap"></div>
            <span class="joms-text--title"><?php echo JText::_('COM_COMMUNITY_SEARCH_NO_RESULT');?></span>
        <?php } ?>

<?php if (isset($pagination) && is_object($pagination) && method_exists($pagination,'getPagesLinks') && $pagination->getPagesLinks() && ($pagination->pagesTotal > 1 || $pagination->get('pages.total') > 1) ) { ?>
    <div class="joms-pagination">
        <?php echo $pagination->getPagesLinks(); ?>
    </div>
<?php } ?>
</div>
