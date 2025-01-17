<?php

class ShoppingCartProduct
{
    private instrument $instrument;
    private int $quantity;

    public function __construct($instrument, $quantity)
    {
        $this->instrument = $instrument;
        $this->quantity = $quantity;
    }

    /**
     * @return instrument
     */
    public function getinstrument(): instrument
    {
        return $this->instrument;
    }

    /**
     * @param instrument $instrument
     */
    public function setinstrument(instrument $instrument): void
    {
        $this->instrument = $instrument;
    }

    /**
     * @return int
     */
    public function getQuantity(): int
    {
        return $this->quantity;
    }

    /**
     * @param int $quantity
     */
    public function setQuantity(int $quantity): void
    {
        $this->quantity = $quantity;
    }

    public function getPrice(): float
    {
        return (float)$this->getQuantity() * $this->instrument->price;
    }
}