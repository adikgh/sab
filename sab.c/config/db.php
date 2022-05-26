<?php

class db {

    public static $host = 'localhost';
    public static $user = 'root';
    public static $pass = '';
    public static $name = 'sabc';
    public static $connect = null;

    // public static $host = 'srv-db-plesk01.ps.kz:3306';
    // public static $user = 'sabeduca_admin';
    // public static $pass = '7dssA6_7';
    // public static $name = 'sabeduca_s';
    // public static $connect = null;

    public function __construct() {
        self::$connect = mysqli_connect(self::$host, self::$user, self::$pass, self::$name);
        if(!self::$connect) exit("Настройте конфигурацию базы данных!");
    }

    public static function query($sql) {
        return mysqli_query(self::$connect, $sql);
    }
    
}