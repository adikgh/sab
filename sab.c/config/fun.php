<?php 

class fun {
	
	function __construct() {}

	public static function autor($id) {
	  $sql = db::query("select * from user_autor where id = '$id'");
	  $sql = mysqli_fetch_array($sql);
	  return $sql;
	}

	public static function cours_item_info($id) {
	  $user_id = core::$user_data['id'];
	  $sql = db::query("select * from cours_sub_info where cours_item_id = '$id' and user_id = '$user_id'");
	  $sql = mysqli_fetch_array($sql);
	  return $sql;
	}

	public static function user_info($id) {
	  $sql1 = db::query("select * from user where id = '$id'");
	  $sql1 = mysqli_fetch_array($sql1);
	  $sql2 = db::query("select * from user_info where user_id = '$id'");
	  if (mysqli_num_rows($sql2) == 0) {
	      $sql = $sql1;
	  } else {
	      $sql2 = mysqli_fetch_array($sql2);
	      $sql = array_merge($sql1, $sql2);
	  }
	  
	  return $sql;
	}

	public static function status($id) {
	  $sql = db::query("select * from status where id = '$id'");
	  $sql = mysqli_fetch_array($sql);
	  return $sql;
	}
	
}