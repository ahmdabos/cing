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

        $data['status'] = '';
        $data['targetDir'] = FCPATH . '../uploads/';
        $data['targetFile'] = $data['targetDir'] . basename($_FILES["file"]["name"]);

        $data['imageFileType'] = pathinfo($data['targetFile'], PATHINFO_EXTENSION);
        $data['fileName'] = $this->generateRandomString(20) . '.' . $data['imageFileType'];

        $targetFile = $data['targetDir'] . $data['fileName'];
        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["file"]["tmp_name"]);
        if ($check !== false) {
            //echo "File is an image - " . $check["mime"] . ".";
            $data['status'] = 1;
        } else {
            // echo "File is not an image.";
            $data['status'] = 0;
        }

        // Check if file already exists
        if (file_exists($targetFile)) {
            //echo "Sorry, file already exists.";
            $data['status'] = 0;
        }
        // Check file size
        if ($_FILES["file"]["size"] > 500000) {
            //echo "Sorry, your file is too large.";
            $data['status'] = 0;
        }
        // Allow certain file formats
        if ($data['imageFileType'] != "jpg" && $data['imageFileType'] != "png" && $data['imageFileType'] != "jpeg"
            && $data['imageFileType'] != "gif"
        ) {
            //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            $data['status'] = 0;
        }
        // Check if $uploadOk is set to 0 by an error
        if ($data['status'] == 0) {
            //echo "Sorry, your file was not uploaded.";
            // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
                //echo "The file " . basename($_FILES["file"]["name"]) . " has been uploaded.";
            } else {
                //echo "Sorry, there was an error uploading your file.";
            }
        }

        return json_encode($data);
    }
}
