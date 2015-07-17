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
?>

<?php if ( !empty( $groups ) ) { ?>

<ul class="joms-list--thumbnail clearfix">
    <?php foreach ( $groups as $group ) { ?>
        <li class="joms-list__item">
            <div class="joms-avatar">
                <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&task=viewgroup&groupid='.$group->id); ?>">
                    <img src="<?php echo $group->getThumbAvatar(); ?>" alt="<?php echo CStringHelper::escape($group->name); ?>" title="<?php echo htmlspecialchars( JText::_( $group->name )); ?>" />
                </a>
            </div>
        </li>
    <?php } ?>
</ul>

<?php } else { ?>
    <div class="cEmpty"><?php echo JText::_('COM_COMMUNITY_GROUPS_NOITEM'); ?></div>
<?php } ?>

<div class="joms-gap"></div>
<a href="<?php echo CRoute::_('index.php?option=com_community&view=groups'); ?>" class="joms-button--link" ><small><?php echo JText::_('COM_COMMUNITY_GROUPS_VIEW_ALL'); ?></small></a>
