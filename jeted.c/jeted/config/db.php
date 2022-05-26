<?php

class db {

    public static $host = 'localhost';
    public static $user = 'root';
    public static $pass = '';
    public static $name = 'jeted';
    public static $connect = null;

    // public static $host = 'srv-db-plesk01.ps.kz:3306';
    // public static $user = 'sabeduca_jeted';
    // public static $pass = '~Pfg036q';
    // public static $name = 'sabeduca_jeted';
    // public static $connect = null;

    public function __construct() {
        self::$connect = mysqli_connect(self::$host, self::$user, self::$pass, self::$name);
        if(!self::$connect) exit("Настройте конфигурацию базы данных!");
    }

    public static function query($sql) {
        return mysqli_query(self::$connect, $sql);
    }
    
}