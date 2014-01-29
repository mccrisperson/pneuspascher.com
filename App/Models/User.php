<?php

namespace App\Models;
use App\Components\SecureModel\SecureModel;

defined('CORE_EXEC') or die('Restricted Access');


class User extends SecureModel {
	
	const TABLE_NAME = 'users';
	const SECURE_FIELDS = 'password';

	public $id;
	public $name;
	public $email;
	public $password;



	public function login () {
		return self::secure_get(array('email'=> $this->email, 'password' => $this->password));
	}


	public function register () {
		if (count(self::find(array('email'=>$this->email))) == 0) {
			return $this->save();
		}
		return false;
	}


	public function validate () {
		if (empty($this->name)  
		 || empty($this->email) 
		 || empty($this->password)) {
			return false;
		}
		return true;
	}			

}