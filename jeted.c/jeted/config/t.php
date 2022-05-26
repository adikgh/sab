<?php

class t {

	public function __construct() {}

	public static function w($l) {
		$sql = mysqli_fetch_array(db::query("select * from `word` where txt = '$l'"));
		if ($_SESSION['lang'] == 'kz') $word = $sql['txt_kz']; else $word = $sql['txt_ru'];
		return $word;
	}
    
}