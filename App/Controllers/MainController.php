<?php

namespace App\Controllers;
use App\Components\AppController\AppController;

// File security
defined('CORE_EXEC') or die('Restricted Access');


/**
 *
 * App Main Controller
 *
 * @author Your name
 *
 */
class MainController extends AppController {


	/**
	 *
	 * @constant PRIVILEDGE_LEVEL
	 * Use this constant to set the needed priviledge level for the controller
	 *
	 */
	const PRIVILEDGE_LEVEL = self::VISITOR;


	/**
	 *
	 * - index
	 * @access public
	 *
	 */
	public function index () {
		
		// Define extra view parameters
		$this->view->set('title', 'Pneus pas cher');
		
		// Render the view
		$content = $this->view->render('App/Views/Main/index');

		// Use setContent to add the content to your response
		$this->response->setContent($content);
		
		// Send the respone
		$this->response->send();
 	}


}









