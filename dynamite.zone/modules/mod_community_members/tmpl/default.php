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
<div class="joms-js--member-module">
    <div id="latest-members-nav" class="joms-module__filter joms-text--small" style="position:relative;">
        <?php
            foreach ( $htmlFilters as $index => $filter ) {
                echo $filter;
            }
        ?>
        <div class="joms-js--loading" style="position:absolute;right:0;top:0;display:none;"><img src="<?php echo JURI::root(true); ?>/components/com_community/assets/ajax-loader.gif" alt="loader"></div>
    </div>
    <div class="joms-gap"></div>
    <ul class="joms-list--thumbnail clearfix">
        <?php foreach ($latestMembers as $member) { ?>
            <li class="joms-list__item">
                <div class="joms-avatar">
                    <a href="<?php echo CRoute::_('index.php?option=com_community&view=profile&userid='.$member->id );?>">
                        <img src="<?php echo $member->getThumbAvatar(); ?>"
                            title="<?php echo CTooltip::cAvatarTooltip($member); ?>"
                            alt="<?php echo CStringHelper::escape( $member->getDisplayName() ) ?>"
                            data-author="<?php echo $member->id; ?>">
                    </a>
                </div>
            </li>
        <?php } ?>
    </ul>
</div>

<div class="joms-gap"></div>
<a href="<?php echo CRoute::_('index.php?option=com_community&view=search&task=browse' ); ?>" class="joms-button--link">
    <small>
        <?php echo JText::_( 'COM_COMMUNITY_FRONTPAGE_BROWSE_ALL' ); ?>
        <?php if($showTotalMembers) echo "($totalMembers)"; ?>
    </small>
</a>

<script>
    (function( w ) {
        w.joms_queue || (w.joms_queue = []);
        w.joms_queue.push(function( $ ) {
            var $ct = $('#latest-members-nav'),
                $loading = $ct.find('.joms-js--loading');

            function render( json ) {
                $list = $('.joms-js--member-module').find('.joms-list--thumbnail');
                $list.html( json.html || '&nbsp;' );
            }

            $ct.on( 'click', '.newest-member', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetNewestMember',
                    data: [ frontpageUsers ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });

            $ct.on( 'click', '.active-member', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetActiveMember',
                    data: [ frontpageUsers ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });

            $ct.on( 'click', '.popular-member', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetPopularMember',
                    data: [ frontpageUsers ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });

            $ct.on( 'click', '.featured-member', function( e ) {
                $loading.show();
                joms.ajax({
                    func: 'frontpage,ajaxGetFeaturedMember',
                    data: [ frontpageUsers ],
                    callback: function( json ) {
                        $( e.target ).addClass('active-state').siblings('a').removeClass('active-state');
                        $loading.hide();
                        render( json );
                    }
                });
            });

            $ct.find( '.<?php echo $defaultFilter; ?>-member' ).click();

        });
    })( window );
</script>

