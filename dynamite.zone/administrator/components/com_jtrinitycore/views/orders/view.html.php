<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
// import Joomla view library
jimport('joomla.application.component.view');
 
/**
 * Items View
 */
class JTrinityCoreViewOrders extends JView
{
	/**
	 * Items  view display method
	 * @return void
	 */
	function display($tpl = null) 
	{
				
		// Get data from the model. Calls the getItems() funtion of the model	
		$this->items = $this->get('Items');	
		$this->pagination = $this->get('Pagination');
 
		// Check for errors.
		if (count($errors = $this->get('Errors'))) 
		{
			JError::raiseError(500, implode('<br />', $errors));
			return false;
		}
				
		// Set the toolbar
		$this->addToolBar();
		
		
		// Display the template
		parent::display($tpl);
		
		// Set the document
		$this->setDocument();
		
		// Add submenu 
		//JTrinityCoreHelper::addSubmenu('powerlevelings');
		
		
	}
	
	/**
	 * Setting the toolbar
	 */
	protected function addToolBar()
	{
		//$canDo = JTrinityCoreHelper::getActions();
		//JToolBarHelper::title(JText::_('COM_JTRINITYCORE_ORDERS'), 'orders.gif');
		JToolBarHelper::title(JText::_('COM_JTRINITYCORE_ORDERS'));
		
		JToolBarHelper::custom('cpanel', 'back.png', 'back_f2.png',
					                       'JTOOLBAR_CPANEL', false);
	}
	
	/**
	 * Method to set up the document properties
	 *
	 * @return void
	 */
	protected function setDocument()
	{
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_JTRINITYCORE_ORDERS'));
	}
}