<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends MX_Controller {

   protected $_data = array();

	 function __construct()
   {
      parent::__construct();

      if(!($this->session->userdata('language')))
      {
          $this->session->set_userdata('language','english');
      }

      $this->_data['user_language']  = $this->session->userdata('language');

   }

}
