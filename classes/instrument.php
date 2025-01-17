<?php
class instrument
{
    public $id;
    public $name;
    public $description;
    public $img;
    public $price;
    public $vendorId;

    public function __construct()
    {
        settype($this->id, 'integer');
        settype($this->price, 'float');
    }
}