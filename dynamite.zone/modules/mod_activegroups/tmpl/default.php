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
<?php
$showAvatar = $params->get('show_avatar', '1');
$showTotal	= $params->get('show_total', '1');
?>
<div class="joms-js--module-activegroup">

<?php if ( !empty($groups) ) { ?>
    <?php foreach ( $groups as $group ) { ?>

    <div class="joms-stream__header">
        <?php if($showAvatar) : ?>
        <div class="joms-avatar--stream">
            <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&groupid='.$group->id.'&task=viewgroup'); ?>">
                <img src="<?php echo $group->avatar; ?>" alt="<?php echo CStringHelper::escape( $group->name ); ?>" width="45" >
            </a>
        </div>
        <?php endif;?>

        <div class="joms-stream__meta">
            <a class="joms-text--title" href="<?php echo CRoute::_('index.php?option=com_community&view=groups&groupid='.$group->id.'&task=viewgroup'); ?>">
                <?php echo $group->name; ?>
            </a>
            <?php if ( $showTotal == 1 ) : ?>
                <a href="<?php echo CRoute::_( "index.php?option=com_community&view=groups&task=viewmembers&groupid=" . $group->id ); ?>" class="joms-block"><small>
                    <?php echo JText::sprintf( (!CStringHelper::isSingular($group->totalMembers)) ? 'MOD_ACTIVEGROUPS_MEMBER_MANY':'MOD_ACTIVEGROUPS_MEMBER', $group->totalMembers); ?>
                </small></a>
            <?php endif; ?>
        </div>
    </div>

    <?php }
    } else {
	   echo JText::_("MOD_ACTIVEGROUPS_NO_ACTIVE_GROUPS");
    } ?>

</div>
