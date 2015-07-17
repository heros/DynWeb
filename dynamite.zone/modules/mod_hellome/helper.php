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

if(!class_exists('modHelloMeHelper'))
{
    class modHelloMeHelper
    {
        function getType()
        {
            $user = JFactory::getUser();
            return (!$user->get('guest')) ? 'logout' : 'login';
        }

        function isFacebookUser()
        {
            $my     = CFactory::getUser();

            // Script needs to be here if they are

            // Once they reach here, we assume that they are already logged into facebook.
            // Since CFacebook library handles the security we don't need to worry about any intercepts here.
            $connectTable   = JTable::getInstance( 'Connect' , 'CTable' );
            $facebook       = new CFacebook();
            $fbUser         = $facebook->getUser();

            if( !$fbUser )
            {
                return false;
            }

            if(!isset($fbUser['id'])){
                return false;
            }

            $connectTable->load( $fbUser['id'] );
            $isFacebookUser = ( $connectTable->userid == $my->id ) ? true : false;

            return $isFacebookUser;
        }

        function getHelloMeScript($profileStatus, $isMine)
        {
            $cleanProfileStatus = str_replace( array("\r\n", "\n", "\r"), "", $profileStatus );
            $cleanProfileStatus = addslashes( $cleanProfileStatus );

            $profileStatus      = html_entity_decode( $profileStatus );
            $profileStatus      = preg_replace( '/<br\s*\/?>/', '', $profileStatus );
            $profileStatus      = preg_replace( '/\n/', ' ', $profileStatus );
            $profileStatus      = preg_replace( '/<a[^>]*>([^<>]*)<\/a>/', '$1', $profileStatus );
            $profileStatus      = addslashes( $profileStatus );

            $script =<<<SHOWJS
                window.joms_queue || (window.joms_queue = []);
                window.joms_queue.push(function( $ ) {
                    window.joms_mod_hellome = {

                        edit: function() {
                            $('.joms-js--mod-hellome-edit').show();
                            $('.joms-js--mod-hellome-display').hide();
                            $('.joms-js--mod-hellome-editlink').hide();
                            $('.joms-js--mod-hellome-savelink').show();
                            cur_status = $('.joms-js--mod-hellome-text').val();
                        },

                        save: function() {
                            var value;

                            if ( cur_status != $('.joms-js--mod-hellome-text').val() ) {
                                value = $('.joms-js--mod-hellome-text').val();
                                $('.joms-js--mod-hellome-loading').show();
                                jax.call('community', 'status,ajaxUpdate', value);
                                cur_status = value;
                            }

                            $('.joms-js--mod-hellome-edit').hide();
                            $('.joms-js--mod-hellome-display').show();
                            $('.joms-js--mod-hellome-editlink').show();
                            $('.joms-js--mod-hellome-savelink').hide();
                            return false;
                        },

                        keyup: function( e ) {
                            var key = e.keyCode ? e.keyCode : e.charCode;
                            if ( key == 13 ) {
                                joms_mod_hellome.save();
                                return false;
                            }
                        },

                        logout: function() {
                            document.hellomelogout.submit();
                        }

                    };

                    $('.joms-js--mod-hellome-label').html('$cleanProfileStatus');
                    $('.joms-js--mod-hellome-text').val('$profileStatus');

                });
SHOWJS;

                return $script;
        }
    }
}
