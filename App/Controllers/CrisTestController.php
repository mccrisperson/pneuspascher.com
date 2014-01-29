<?php

namespace App\Controllers;
use App\Components\AppController\AppController;
use App\Models\Product;

// File security
defined('CORE_EXEC') or die('Restricted Access');

class CrisTestController extends AppController {

	const PRIVILEDGE_LEVEL = self::VISITOR;



 	// test afficher un produit (page statique)
 	public function showProduct () {
		$this->view->set('title', 'Détail');
 		$content = $this->view->render('App/Views/CrisTest/product');
		$this->response->setContent($content);
		$this->response->send();
 	}


	public function showAllProduct () {

		$this->view->set('title', 'Liste des pneus');
		$this->view->bind('Products', Product::all());
		$content = $this->view->render('App/Views/CrisTest/productlist');

		$this->response->setContent($content);
		$this->response->send();
	}



 } // fin classe	