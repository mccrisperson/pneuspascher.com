<?php

namespace App\Models;
use Framework\Components\Model\Model;


class Product extends Model {

	const TABLE_NAME = 'product_test';

	public $id;
	public $brand;
	public $model;
	public $desc;
	public $quantity;
	public $price;
	public $img_url;
	public $logo_url;


	public function validate () {
		if (empty($this->name)) {
			return false;
		} else {
			return true;
		}
	}

}