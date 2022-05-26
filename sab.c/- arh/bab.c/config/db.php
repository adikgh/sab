<?php

class db {
    public static $host = 'localhost';
    public static $user = 'root';
    public static $pass = '';
    public static $name = 'psx';
    public static $connect = null;

    // public static $host = 'srv-pleskdb18.ps.kz:3306';
    // public static $user = 'bopaikz_sab';
    // public static $pass = 'Kwwv34%5';
    // public static $name = 'bopaikz_sab';
    // public static $connect = null;

    public function __construct()
    {
        self::$connect = mysqli_connect(self::$host, self::$user, self::$pass, self::$name);
        if(!self::$connect) exit("Настройте конфигурацию базы данных!");
    }

    public static function query($sql)
    {
        return mysqli_query(self::$connect, $sql);
    }
}