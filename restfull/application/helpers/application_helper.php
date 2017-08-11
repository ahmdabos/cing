<?php


class ApplicationHelpers {

    public static function dump($var){
        echo '<pre>';
        print_r($var);
        echo '</pre>';
        exit();
    }

    public static function calculateDays($date){

        $startDate = new \DateTime(date('Y-m-d', strtotime($date)));
        $endDate  = new \DateTime(date('Y-m-d'));
        $dDiff = $startDate->diff($endDate);
        return $dDiff->days;

    }

    public static function getRowUnprocessedText($model){
    	$days = self::calculateDays($model->SubCreatedAt);
        $text = 'NEW';
        if($days <= 10 && $model->StatusId == 1) $text = 'Due in '. 10 - $days .'d';
        if($days > 10 && $model->StatusId == 1) $text = 'Overdue';
        return $text;
    }

    public static function getRowColor($model){

        $days = self::calculateDays($model->SubCreatedAt);
        $color = '';
        if($days <= 4 && $model->StatusId == 1) $color = 'success';
        if($days > 4 && $days <= 10 && $model->StatusId == 1) $color = 'warning';
        if($days > 10 && $model->StatusId == 1) $color = 'danger';

        return 'label-'.$color;

    }

    public static function contractString($string, $length){
        return (strlen($string) > $length+3) ? substr($string, 0, $length).'...' : $string;
    }

}
