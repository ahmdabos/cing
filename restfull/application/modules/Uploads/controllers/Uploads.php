<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//Uploads Controller
class Uploads extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();

    }

    public function generateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public function uploadFile()
    {
        $data['filePath'] = FCPATH.'../uploads/';
        $data['filePathWithOldName'] = $data['filePath'] . basename($_FILES["file"]["name"]);
        $data['fileExtension'] = pathinfo($data['filePathWithOldName'], PATHINFO_EXTENSION);
        $data['fileNewName'] = $this->generateRandomString(20) . '.' . $data['fileExtension'];
        $filePathWithOldName = $data['filePath'] . $data['fileNewName'];
        $isImage = getimagesize($_FILES["file"]["tmp_name"]);
        if ($isImage === false) {
            $data['statusText'] = "File is not an image.";
            $data['status'] = 0;
        }
        if (file_exists($filePathWithOldName)) {
            $data['statusText'] = "file already exists.";
            $data['status'] = 0;
        }
        if ($_FILES["file"]["size"] > 2097152) {
            $data['statusText'] = "File is more than 2MB";
            $data['status'] = 0;
        }
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $filePathWithOldName)) {
            $data['statusText'] = basename($_FILES["file"]["name"]) . "uploaded successfully";
            $data['status'] = 1;
        }
        return json_encode($data);
    }


}
