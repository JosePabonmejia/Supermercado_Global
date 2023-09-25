<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class PedidoPreparando extends Mailable
{
    use Queueable, SerializesModels;

    //Asunto del email
    public $subject = "Información Pedido";
    public $pedido;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($pedido)
    {
        return $this->pedido = $pedido;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
    
        return $this->view('emails.pedidopreparando');
    }
}
