<?php require 'db.php';

class core
{
    public static $user_ph      = false;    // Идентификатор пользователя
    public static $user_data    = array();  // Все данные пользователя

    public function __construct() {
        new db; // Соединение с базой данных
        session_start(); // Сессия
        date_default_timezone_set('Asia/Almaty'); // time zone
        $this->authorize(); // Авторизация пользователей
    }

    /*
    -----------------------------------------------------------------
    Авторизация пользователя
    -----------------------------------------------------------------
    */

    private function authorize()
    {
        $user_ph = false;
        $user_ps = false;

        if (isset($_SESSION['uph']) && isset($_SESSION['ups'])) {

            // Авторизация по сессии
            $user_ph = $_SESSION['uph'];
            $user_ps = $_SESSION['ups'];
        }
        if ($user_ph && $user_ps) {
            $req = db::query("SELECT * FROM user WHERE phone = '$user_ph'");
            if (mysqli_num_rows($req)) {
                $user_data = mysqli_fetch_assoc($req);
                if ($user_ps == $user_data['password']) {
                    
                    // Если авторизация прошла успешно
                    self::$user_ph = $user_ph;
                    self::$user_data = $user_data;
                    
                } else {

                    // Если авторизация не прошла
                    $this->user_unset();
                }
            } else {

                // Если пользователь не существует
                $this->user_unset();
            }
        }
    }

    /*
    -----------------------------------------------------------------
    Уничтожаем данные авторизации юзера
    -----------------------------------------------------------------
    */
   
    public function user_unset()
    {
        self::$user_ph      = false;
        self::$user_data    = array();
        unset($_SESSION['uph']);
        unset($_SESSION['ups']);
    }

}


$core = new core; // 