<?php 

namespace App\Controllers;
use App\Components\AuthentificationController\AuthentificationController;
use App\Models\User;
use Framework\Components\Session\Session;

defined('CORE_EXEC') or die('Restricted Access');


class UsersController extends AuthentificationController {


	const PRIVILEDGE_LEVEL = self::VISITOR;


	public function signin () {
		$content = $this->view->render('App/Views/Users/signin');
		$this->response->setContent($content);
		$this->response->send();
	}


	public function login () {
		$user = new User($_POST['user']);
		if ($userInformations = $user->login()) {
			self::activate_secure_session(self::USER);
			Session::write('USER.name', $userInformations['name']);
			Session::write('USER.id', $userInformations['id']);
			$this->flash->setMessage('Access granted', 'success');
			self::redirect('');
		}
		else {
			$this->flash->setMessage('Cannot login with thoses credentials', 'error');
			self::redirect('signin');
		}
	}



	public function signup () {
		$content = $this->view->render('App/Views/Users/signup');
		$this->response->setContent($content);
		$this->response->send();
	}



	public function register () {
		$user = new User($_POST['user']);
		if ($userInformations = $user->register()) {
			$this->flash->setMessage('Your account has been created', 'success');
			self::redirect('');
		} else {
			$this->flash->setMessage('Cannot create your account with those informations', 'error');
			self::redirect('signup');
		}
	}

	public function signout () {
		$logUser = Session::read('USER');
		if ($_POST['delete_id'] == $logUser['id']) {
			$this->flash->setMessage('Your session has been close', 'success');
			self::close_secure_session();
			self::redirect('index.html');
		}
	}


}