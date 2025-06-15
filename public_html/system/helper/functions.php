<?php

if(!function_exists('formatPhoneNumber')){
    function formatPhoneNumber($phone) {
		// Удаляем все нечисловые символы
		$cleanedPhone = preg_replace('/[^0-9]/', '', $phone);
	
		// Проверяем длину номера
		if (strlen($cleanedPhone) !== 11) {
			return $phone; // Возвращаем исходный номер, если длина некорректна
		}
	
		// Форматируем номер
		$formattedPhone = sprintf(
			'+7 (%s) %s-%s-%s',
			substr($cleanedPhone, 1, 3),
			substr($cleanedPhone, 4, 3),
			substr($cleanedPhone, 7, 2),
			substr($cleanedPhone, 9, 2)
		);
	
		return $formattedPhone;
	}
}