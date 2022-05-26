<?php 

require 'db.php';
require 'fun.php';

class core {
    public static $user_ph      = false;
    public static $user_data    = array();

    public function __construct() {
        new db;
        new fun;
        session_start();
        date_default_timezone_set('Asia/Almaty');
        $this->authorize();
    }

    private function authorize() {
        $user_ph = false;
        $user_ps = false;

        if (isset($_SESSION['uph']) && isset($_SESSION['ups'])) {
            $user_ph = $_SESSION['uph'];
            $user_ps = $_SESSION['ups'];
        }
        if ($user_ph && $user_ps) {
            $req = db::query("SELECT * FROM user WHERE phone = '$user_ph'");
            if (mysqli_num_rows($req)) {
                $user_data = mysqli_fetch_assoc($req);
                if ($user_ps == $user_data['code']) {
                    self::$user_ph = $user_ph;
                    self::$user_data = $user_data;
                } else {
                    $this->user_unset();
                }
            } else {
                $this->user_unset();
            }
        }
    }
   
    public function user_unset() {
        self::$user_ph      = false;
        self::$user_data    = array();
        unset($_SESSION['uph']);
        unset($_SESSION['ups']);
    }
    
}
$core = new core;

$user = core::$user_data;
$user_id = $user['id'];

$setting = array (
    'header' => true,
    'menu'  => true,
    'lr'    => true
);
$url = $_SERVER['REQUEST_URI'];
// $date = date("Y-m-d", time());
// $time = date("H:m:s", time());
