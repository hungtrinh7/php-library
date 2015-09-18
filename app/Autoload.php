<?php
/**
 * Created by PhpStorm.
 * User: Hung
 * Date: 15/09/2015
 * Time: 21:37
 */

namespace App;

/**
 * Class Autoload
 */
class Autoload{

    /**
     * Enregistre notre autoloader
     */
    static function register(){
        spl_autoload_register(array(__CLASS__, 'autoload'));
    }

    /**
     * Inclue le fichier correspondant à notre classe
     * @param $class string Le nom de la classe à charger
     */
    static function autoload($class){
        require __DIR__ .'/' . $class . '.php';
    }

}