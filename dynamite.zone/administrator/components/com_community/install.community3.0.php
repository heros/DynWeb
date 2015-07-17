<?php
/**
* @copyright (C) 2013 iJoomla, Inc. - All rights reserved.
* @license GNU General Public License, version 2 (http://www.gnu.org/licenses/gpl-2.0.html)
* @author iJoomla.com <webmaster@ijoomla.com>
* @url https://www.jomsocial.com/license-agreement
* The PHP code portions are distributed under the GPL license. If not otherwise stated, all images, manuals, cascading style sheets, and included JavaScript *are NOT GPL, and are released under the IJOOMLA Proprietary Use License v1.0
* More info at https://www.jomsocial.com/license-agreement
*/

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Script file of Ola component
 */
class com_communityInstallerScript
{
	/**
	 * method to install the component
	 *
	 * @return void
	 */
	function install($parent)
	{
		// $parent is the class calling this method
		//$parent->getParent()->setRedirectURL('index.php?option=com_community');
	}

	/**
	 * method to uninstall the component
	 *
	 * @return void
	 */
	function uninstall($parent)
	{
		// $parent is the class calling this method
		//echo '<p>' . JText::_('com_community uninstall script') . '</p>';
	}

	/**
	 * method to update the component
	 *
	 * @return void
	 */
	function update($parent)
	{
		// $parent is the class calling this method
		//echo '<p>' . JText::_('com_community update script') . '</p>';
	}

	/**
	 * method to run before an install/update/uninstall method
	 *
	 * @return void
	 */
	function preflight($type, $parent)
	{
		// $parent is the class calling this method
		// $type is the type of change (install, update or discover_install)
		//echo '<p>' . JText::_('com_community pre flight script') . '</p>';
	}

	/**
	 * method to run after an install/update/uninstall method
	 *
	 * @return void
	 */
	function postflight($type, $parent)
	{
		// get the installing com_community version
		$installer			= JInstaller::getInstance();
		$path				= $installer->getPath('manifest');
		$communityVersion	= $installer->getManifest()->version;

		if ( version_compare(JVERSION,'2.5.6','<') && $communityVersion >= '2.8.0')
		{
			JError::raiseNotice(1, 'JomSocial 2.8.x require minimum Joomla! CMS 2.5.6');
			return false;
		}

		$lang = JFactory::getLanguage();
		$lang->load('com_community', JPATH_ROOT.'/administrator');

		$destination = JPATH_ROOT.'/administrator/components/com_community/';
		$buffer      = "installing";

		if( ! JFile::write($destination.'installer.dummy.ini', $buffer))
		{
			ob_start();
			?>
			<table width="100%" border="0">
				<tr>
					<td>
						There was an error while trying to create an installation file.
						Please ensure that the path <strong><?php echo $destination; ?></strong> has correct permissions and try again.
					</td>
				</tr>
			</table>
			<?php
			$html = ob_get_contents();
			@ob_end_clean();
		}
		else
		{
			$link = rtrim(JURI::root(), '/').'/administrator/index.php?option=com_community';

			ob_start();
			?>
			<style type="text/css">
				.adminform {
					width: 100%;
				}
				.adminform th {
					display: none;
				}
				.joms-install {
					margin-bottom: 30px;
					text-align: center;
					width: 100%;
				}
				.joms-install__wrapper {
					border-radius: 30px;
					margin: 0 auto;
					max-width: 1140px;
					min-height: 400px;
					background: url(<?php echo JURI::root(); ?>administrator/components/com_community/installer/img/install-bg-4.jpg) no-repeat top center;
					position: relative;
					overflow: hidden;
				}
				.joms-install__wrapper h2,
				.joms-install__wrapper h3 {
					color: white;
					font-weight: normal;
				}
				.joms-install__content {
					position: absolute;
					bottom: 0;
					width: 100%;
					background: rgba(0,0,0,0.5);
					padding: 20px 0;
				}
				.joms-install__button {
					padding: 10px 14px;
					border-radius: 4px;
					border: 0;
					background: #259B24;
					color: white;
					font-size: 18px;
					font-weight: bold;
					margin-top: 15px;
					-webkit-box-shadow: 0px 0px 0px 4px rgba(50, 50, 50, 0.15);
					-moz-box-shadow: 0px 0px 0px 4px rgba(50, 50, 50, 0.15);
					box-shadow: 0px 0px 0px 4px rgba(50, 50, 50, 0.15);
				}
				.joms-install__button:hover {
					background: #45c644;
					color: white;
				}
			</style>
			<!-- Installation message // -->
			<div class="joms-install">
				<div class="joms-install__wrapper js-header">
					<img style="margin-top: 65px;" src="<?php echo JURI::root(); ?>administrator/components/com_community/installer/img/logo.png">
					<div class="joms-install__content">
						<h2>JomSocial is a social networking component for Joomla!</h2>
						<h3>Thank you for choosing JomSocial, please click on the following button to complete your installation.</h3>
						<input type="button" class="joms-install__button" onclick="window.location = '<?php echo $link; ?>'" value="<?php echo JText::_('COM_COMMUNITY_INSTALLATION_COMPLETE_YOUR_INSTALLATION');?>"/>
					</div>
				</div>
			</div>
			<!-- \\ -->
			<?php
			$html = ob_get_contents();
			@ob_end_clean();
		}

		echo $html;
	}
}
