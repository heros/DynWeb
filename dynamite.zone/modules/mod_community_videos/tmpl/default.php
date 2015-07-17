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
<div class="joms-js--video-module">
    <div id="latest-videos-nav" class="joms-module__filter joms-text--small" style="position:relative;">
        <a class="newest-videos active-state" href="javascript:"><?php echo JText::_('COM_COMMUNITY_VIDEOS_NEWEST') ?></a><b>&nbsp;&middot;</b>
        <a class="featured-videos" href="javascript:"><?php echo JText::_('COM_COMMUNITY_FEATURED') ?></a><b>&nbsp;&middot;</b>
        <a class="popular-videos" href="javascript:"><?php echo JText::_('COM_COMMUNITY_VIDEOS_POPULAR') ?></a>
        <div class="joms-js--loading" style="position:absolute;right:0;top:0;display:none;"><img src="<?php echo JURI::root(true); ?>/components/com_community/assets/ajax-loader.gif" alt="loader"></div>
    </div>
    <div class="joms-gap"></div>
    <?php if(!empty($videos)) { ?>
    <ul class="joms-list--half clearfix">
        <?php foreach( $videos as $video ) { ?>
        <li class="joms-list__item">
            <a
                <?php if ( $isVideoModal ) { ?>
                    href="javascript:" onclick="joms.api.videoOpen('<?php echo $video->id; ?>');"
                <?php } else { ?>
                    href="<?php echo $video->getURL(); ?>"
                <?php } ?>
                >
                <img src="<?php echo $video->getThumbNail(); ?>" alt="<?php echo $video->getTitle(); ?>"   title="<?php echo CStringHelper::escape($video->title); ?>" />
                <span class="joms-video__duration"><small><?php echo $video->getDurationInHMS(); ?></small></span>
            </a>
        </li>
        <?php } ?>
    </ul>
    <?php } else { ?>
    <div class="cEmpty"><?php echo JText::_('COM_COMMUNITY_VIDEOS_NO_VIDEO'); ?></div>
    <?php } ?>
</div>

<div class="joms-gap"></div>
<a href="<?php echo CRoute::_('index.php?option=com_community&view=videos&task=display'); ?>" class="joms-button--link">
    <small><?php echo JText::_('COM_COMMUNITY_VIDEOS_ALL'); ?></small>
</a>

<script>
    (function( w ) {
        w.joms_queue || (w.joms_queue = []);
        w.joms_queue.push(function( $ ) {
            var $ct = $('#latest-videos-nav'),
                $loading = $ct.find('.joms-js--loading');

            function render( json ) {
                $list = $('.joms-js--video-module').find('.joms-list--half');
                $list.html( json.html || '&nbsp;' );
            }

            $ct.on( 'click', '.newest-videos', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetNewestVideos',
                    data: [ frontpageVideos ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });

            $ct.on( 'click', '.featured-videos', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetFeaturedVideos',
                    data: [ frontpageVideos ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });

            $ct.on( 'click', '.popular-videos', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetPopularVideos',
                    data: [ frontpageVideos ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });
        });
    })( window );
</script>
