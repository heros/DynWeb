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

<div class="joms-js--module-latestdiscussion <?php echo $params->get('moduleclass_sfx'); ?>">

    <?php
    if (!empty($latest)) {
        $items = array();

        foreach ($latest as $data) {
            $items[$data->groupid][] = $data;
        }
        ?>
        <?php
        foreach ($items as $groupId => $data) {
            $table = JTable::getInstance('Group', 'CTable');
            $table->load($groupId);

            if (count($data) > 1) {

                    $i = 0;
                    foreach ($data as $row) {
                        $creator = CFactory::getUser($row->creator);
                    ?>
                    <div class="joms-stream__header wide">

                        <?php if ($showavatar && !$repeatAvatar) { ?>
                            <div class="joms-avatar--stream">
                                <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&task=viewgroup&groupid=' . $table->id); ?>" > <img src="<?php echo $table->getAvatar('thumb'); ?>" alt="<?php echo CStringHelper::escape($table->name); ?>"  />
                                </a>
                            </div>
                        <?php } ?>

                        <?php if ($showavatar && $repeatAvatar) { ?>
                        <div class="joms-avatar--stream">
                            <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&task=viewgroup&groupid=' . $table->id); ?>" >
                                <img src="<?php echo $table->getAvatar('thumb'); ?>" alt="<?php echo CStringHelper::escape($table->name); ?>" />
                            </a>
                        </div>
                        <?php } ?>

                        <div class="joms-stream__meta">
                            <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&task=viewdiscussion&groupid=' . $table->id . '&topicid=' . $row->id); ?>" class="joms-block"><?php echo $row->title; ?></a>
                            <small>
                            <?php echo JText::_('COM_COMMUNITY_BY'); ?>
                            <a href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid=' . $creator->id); ?>"><?php echo $creator->getDisplayName(); ?></a>
                            <span class="joms-block"><?php echo JText::sprintf((!CStringHelper::isSingular($row->counter)) ? 'MOD_LATESTDISC_REPLY_MANY' : 'MOD_LATESTDISC_REPLY', $row->counter); ?></span>
                            </small>
                        </div>
                    </div>

                <?php $i++; } ?>
                <?php } else {
                $creator = CFactory::getUser($data[0]->creator);
                ?>
                <div class="joms-stream__header wide">
                    <?php if ($showavatar) { ?>
                        <div class="joms-avatar--stream">
                            <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&task=viewgroup&groupid=' . $table->id); ?>" >
                                <img src="<?php echo $table->getAvatar('thumb'); ?>" alt="<?php echo CStringHelper::escape($table->name); ?>" />
                            </a>
                        </div>
                    <?php } ?>
                    <div class="joms-stream__meta">
                        <a href="<?php echo CRoute::_('index.php?option=com_community&view=groups&task=viewdiscussion&groupid=' . $table->id . '&topicid=' . $data[0]->id); ?>" class="joms-block"><?php echo $data[0]->title; ?></a>
                        <small>
                        <?php echo JText::_('COM_COMMUNITY_BY'); ?> <a href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid=' . $creator->id); ?>"><?php echo $creator->getDisplayName(); ?></a>
                        <span class="joms-block"><?php echo JText::sprintf((!CStringHelper::isSingular($data[0]->counter)) ? 'MOD_LATESTDISC_REPLY_MANY' : 'MOD_LATESTDISC_REPLY', $data[0]->counter); ?></span>
                        </small>
                    </div>

                </div>
                <?php } } ?>
                <?php } else {
                    echo JText::_("MOD_LATESTDISC_NO_DISCUSSION");
                }   ?>
</div>
