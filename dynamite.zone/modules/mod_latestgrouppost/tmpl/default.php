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

<div class="joms-js--module-latestgrouppost joms-text--break <?php echo $params->get('moduleclass_sfx'); ?> ">

<?php if (count($groups) > 0) { ?>

    <?php $charactersCount	= $params->get('charcount' , 10000 );

    	if(is_array($groups) && !empty($groups)){

    	//$key indicates the group id
    	foreach( $groups as $key=>$groupPost ) {
    		$groupId        = $key;
    		$groupname      = CStringHelper::escape($groupPost[0]->groupname);
    		$grouplink 		= CRoute::_('index.php?option=com_community&view=groups&task=viewgroup&groupid=' . $groupId );
            ?>

    	    <h4><?php echo $groupname; ?></h4>

            	<?php
            		foreach($groupPost as $post_info):
            		$user			= CFactory::getUser( $post_info->actor );
            		$comment	= CComment::stripCommentData( $post_info->title );
            		$comment		= JString::substr( $comment , 0 , $charactersCount);
            		$comment		.= ( $charactersCount > JString::strlen( $comment ) ) ? '' : '...';
            		$comment 	= CUserHelper::replaceAliasURL($comment);
            	?>
            	<div class="joms-stream__header wide ">
            		<div class= "joms-avatar--stream">
                        <a title="<?php echo $user->getDisplayName();?>" href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid='.$user->id); ?>">
            				<img src="<?php echo $user->getThumbAvatar(); ?>" alt="<?php echo $groupname; ?>" />
            			</a>
            		</div>

            		<div class="joms-stream__meta">
            			<span ><a href="<?php echo $grouplink; ?>"><p><?php echo $comment;?></p></a></span>
            			<span class="joms-block"><?php echo JText::sprintf('MOD_LATESTGROUPPOST_BY', '<a href="'.CRoute::_('index.php?option=com_community&view=profile&userid='.$user->id).'">'.$user->getDisplayName().'</a>'); ?></span>

            		</div>
            	</div>
            	<?php endforeach; ?>

        <?php
	    }
    }
} else {
?>
<div class="joms-text--light"><?php echo JText::_('MOD_LATESTGROUPPOST_NO_DISCUSSION'); ?></div>
<?php
}
?>
</div>
