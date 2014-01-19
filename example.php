<?php
// https://github.com/bobthecow/mustache.php/wiki
// https://github.com/bobthecow/mustache.php/wiki/Mustache-Tags

require dirname(__FILE__) . '/Mustache/Autoloader.php';
Mustache_Autoloader::register();
$mustache = new Mustache_Engine(array(
    'cache' => dirname(__FILE__).'/mustache_cache',
    'cache_file_mode' => 0666, // Please, configure your umask instead of doing this :)
    'cache_lambda_templates' => true,
    'loader' => new Mustache_Loader_FilesystemLoader(dirname(__FILE__).'/views'),
    'partials_loader' => new Mustache_Loader_FilesystemLoader(dirname(__FILE__).'/views/partials'),
));

$tpl = $mustache->loadTemplate('foo'); // loads __DIR__.'/views/foo.mustache';
echo $tpl->render(array('bar' => 'baz'));


class Chris {
    public $name  = "Chris";
    public $value = 10000;

    public function taxed_value() {
        return $this->value - ($this->value * 0.4);
    }

    public $in_ca = true;
}

$chris = new Chris;
$tpl = $mustache->loadTemplate('example'); 
echo $tpl->render($chris);

?>