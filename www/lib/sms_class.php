<?php
class Sms{

	public function sendSms( $text ){
		return $this->turboSms( $text );
	}
	
	private function turboSms( $text ){
	
		// Подключаемся к серверу   
		$client = new SoapClient('http://turbosms.in.ua/api/wsdl.html');
		
		// Данные авторизации   
		$auth = [   
			'login' => 'loggate222',   
			'password' => 'WranglerTurbosms1964'   
		]; 
		// Авторизируемся на сервере   
		$result = $client->Auth($auth);
		if( $result->AuthResult != 'Вы успешно авторизировались' ){
			throw new Exception('ERROR_TURBOSMS: '.$result->AuthResult);
		}
					
		// Получаем количество доступных кредитов   
		if( !$result = $client->GetCreditBalance() ){
			throw new Exception('ERROR_TURBOSMS: Количество кредитов на счету - '.$result->GetCreditBalanceResult);
		}
		// Отправляем сообщение на один номер.   
		// Подпись отправителя может содержать английские буквы и цифры. Максимальная длина - 11 символов.   
		// Номер указывается в полном формате, включая плюс и код страны   
		$sms = [   
			'sender' => 'NewOrderUa',   
			'destination' => '+380975556458',   
			'text' => $text 
		];
		//$result = $client->SendSMS($sms);
		return $result; 
	}
}
?>