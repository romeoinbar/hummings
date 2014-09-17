<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
class clsDefine{	
    const MAX_RECORD_PER_PAGE = 10;
		function COUNTRY_SITE(){
			$arr = array();	
			$arr['cn']='Chinese';
			$arr['en']='Singapore';
			$arr['jp']='Japanese';
			$arr['kr']='Korean';
			$arr['vn']='Vietnamese';
			return $arr;
		}

		function VOTES(){
			$arr = array();	
			$arr[0]='Rating : 0/5';
			$arr[1]='Rating : 1/5';
			$arr[2]='Rating : 2/5';
			$arr[3]='Rating : 3/5';
			$arr[4]='Rating : 4/5';
			$arr[5]='Rating : 5/5';
			return $arr;
		}
		
		function NEWSLETTER_TYPE(){
			$arr = array();
			//$arr[0]='N/A';
			$arr[1]='Registered';
			$arr[2]='Registered and bought';
			$arr[3]='Newsletter Subscribers';
			return $arr;
		}		
		
		function checkAdminType($type, $func) {
			switch($func)
			{
				case "menu":
					if($type == 1) {
						return true;
					}
					break;
				case "setting":
					if($type == 1) {
						return true;
					}
					break;					
				case "articles":
					if($type == 1) {
						return true;
					}
					break;
				case "newsletter":
					if($type == 1) {
						return true;
					}
					break;					
				case "banner":
					if($type == 1) {
						return true;
					}
					break;					
				case "campaign":
					if($type == 1) {
						return true;
					}
					break;	
				case "tracking":
					if($type == 1) {
						return true;
					}
					break;		
				case "product":
					if($type == 1) {
						return true;
					}
					break;		
				case "delivery":
					if($type == 1) {
						return true;
					}
					break;	
				case "coupon":
					if($type == 1) {
						return true;
					}
					break;	
				case "reports":
					if($type == 1) {
						return true;
					}
					break;		
				case "message":
					if($type == 1) {
						return true;
					}
					break;																
				case "order":
					if(1) {
						return true;
					}
					break;																	
				case "manage_users":
					if($type == 1) {
						return true;
					}
					break;
				case "update_users":
					if($type == 1) {
						return true;
					}
					break;
				case "add_users":
					if($type == 1) {
						return true;
					}
					break;
				case "manage_prizes":
					if($type == 1) {
						return true;
					}
					break;
				case "update_prizes":
					if($type == 1) {
						return true;
					}
					break;
				case "add_prizes":
					if($type == 1) {
						return true;
					}
					break;
				case "manage_quiz":
					if($type == 1) {
						return true;
					}
					break;
				case "update_news":
					if($type == 1) {
						return true;
					}
					break;
				case "add_news":
					if($type == 1) {
						return true;
					}
					break;	
				case "update_faq":
					if($type == 1) {
						return true;
					}
					break;
				case "add_faq":
					if($type == 1) {
						return true;
					}
					break;	
				case "update_quiz":
					if($type == 1) {
						return true;
					}
					break;
				case "add_quiz":
					if($type == 1) {
						return true;
					}
					break;	
				case "manage_dealer":
					if($type == 2) {
						return true;
					}
					break;	
				case "create_sale":
					if($type == 2) {
						return true;
					}
					break;		
				case "point_redemp":
					if($type == 2) {
						return true;
					}
					break;	
				case "manage_news":
					if($type == 2) {
						return true;
					}
					break;		
				case "manage_faq":
					if($type == 2) {
						return true;
					}
					break;
				case "product_promotion":
					if($type == 2) {
						return true;
					}
					break;
			}
			return false;
		}	
	function NEWSLETTER_USER_TYPE() {
		$user_type = array();
		$user_type[1]='Subscribe';
		$user_type[2]='Unsubscribe';		
		return $user_type;
	}
	function USER_TYPE() {
		$user_type = array();
		$user_type[1]='Administrator';
		$user_type[2]='Sales Representative';		
		return $user_type;
	}	
	
	function DEFAULT_COUNTRY(){
		return array(196,130, 101, 172, 216, 33);
	}
	
	function COUNTRY(){
			$arrCountry = array();	
			$arrCountry["1"]=array("code" => "AF", "name" => "Afghanistan", "status" => "1");
			$arrCountry["2"]=array("code" => "AX", "name" => "Aland Islands", "status" => "1");
			$arrCountry["3"]=array("code" => "AL", "name" => "Albania", "status" => "1");
			$arrCountry["4"]=array("code" => "DZ", "name" => "Algeria", "status" => "1");
			$arrCountry["5"]=array("code" => "AS", "name" => "American Samoa", "status" => "1");
			$arrCountry["6"]=array("code" => "AD", "name" => "Andorra", "status" => "1");
			$arrCountry["7"]=array("code" => "AO", "name" => "Angola", "status" => "1");
			$arrCountry["8"]=array("code" => "AI", "name" => "Anguilla", "status" => "1");
			$arrCountry["9"]=array("code" => "AQ", "name" => "Antarctica", "status" => "1");
			$arrCountry["10"]=array("code" => "AG", "name" => "Antigua and Barbuda", "status" => "1");
			$arrCountry["11"]=array("code" => "AR", "name" => "Argentina", "status" => "1");
			$arrCountry["12"]=array("code" => "AM", "name" => "Armenia", "status" => "1");
			$arrCountry["13"]=array("code" => "AW", "name" => "Aruba", "status" => "1");
			$arrCountry["14"]=array("code" => "AU", "name" => "Australia", "status" => "1");
			$arrCountry["15"]=array("code" => "AT", "name" => "Austria", "status" => "1");
			$arrCountry["16"]=array("code" => "AZ", "name" => "Azerbaijan", "status" => "1");
			$arrCountry["17"]=array("code" => "BS", "name" => "Bahamas", "status" => "1");
			$arrCountry["18"]=array("code" => "BH", "name" => "Bahrain", "status" => "1");
			$arrCountry["19"]=array("code" => "BD", "name" => "Bangladesh", "status" => "1");
			$arrCountry["20"]=array("code" => "BB", "name" => "Barbados", "status" => "1");
			$arrCountry["21"]=array("code" => "BY", "name" => "Belarus", "status" => "1");
			$arrCountry["22"]=array("code" => "BE", "name" => "Belgium", "status" => "1");
			$arrCountry["23"]=array("code" => "BZ", "name" => "Belize", "status" => "1");
			$arrCountry["24"]=array("code" => "BJ", "name" => "Benin", "status" => "1");
			$arrCountry["25"]=array("code" => "BM", "name" => "Bermuda", "status" => "1");
			$arrCountry["26"]=array("code" => "BT", "name" => "Bhutan", "status" => "1");
			$arrCountry["27"]=array("code" => "BO", "name" => "Bolivia", "status" => "1");
			$arrCountry["28"]=array("code" => "BA", "name" => "Bosnia and Herzegovina", "status" => "1");
			$arrCountry["29"]=array("code" => "BW", "name" => "Botswana", "status" => "1");
			$arrCountry["30"]=array("code" => "BV", "name" => "Bouvet Island", "status" => "1");
			$arrCountry["31"]=array("code" => "BR", "name" => "Brazil", "status" => "1");
			$arrCountry["32"]=array("code" => "IO", "name" => "British Indian Ocean Territory", "status" => "1");
			$arrCountry["33"]=array("code" => "BN", "name" => "Brunei", "status" => "1");
			$arrCountry["34"]=array("code" => "BG", "name" => "Bulgaria", "status" => "1");
			$arrCountry["35"]=array("code" => "BF", "name" => "Burkina Faso", "status" => "1");
			$arrCountry["36"]=array("code" => "BI", "name" => "Burundi", "status" => "1");
			$arrCountry["37"]=array("code" => "KH", "name" => "Cambodia", "status" => "1");
			$arrCountry["38"]=array("code" => "CM", "name" => "Cameroon", "status" => "1");
			$arrCountry["39"]=array("code" => "CA", "name" => "Canada", "status" => "1");
			$arrCountry["40"]=array("code" => "CV", "name" => "Cape Verde", "status" => "1");
			$arrCountry["41"]=array("code" => "KY", "name" => "Cayman Islands", "status" => "1");
			$arrCountry["42"]=array("code" => "CF", "name" => "Central African Republic (République Centrafricaine)", "status" => "1");
			$arrCountry["43"]=array("code" => "TD", "name" => "Chad", "status" => "1");
			$arrCountry["44"]=array("code" => "CL", "name" => "Chile", "status" => "1");
			$arrCountry["45"]=array("code" => "CN", "name" => "China", "status" => "1");
			$arrCountry["46"]=array("code" => "CX", "name" => "Christmas Island", "status" => "1");
			$arrCountry["47"]=array("code" => "CC", "name" => "Cocos Islands", "status" => "1");
			$arrCountry["48"]=array("code" => "CO", "name" => "Colombia", "status" => "1");
			$arrCountry["49"]=array("code" => "KM", "name" => "Comoros", "status" => "1");
			$arrCountry["50"]=array("code" => "CG", "name" => "Congo", "status" => "1");
			$arrCountry["51"]=array("code" => "CD", "name" => "Congo, Democratic Republic of the", "status" => "1");
			$arrCountry["52"]=array("code" => "CK", "name" => "Cook Islands", "status" => "1");
			$arrCountry["53"]=array("code" => "CR", "name" => "Costa Rica", "status" => "1");
			$arrCountry["54"]=array("code" => "CI", "name" => "Côte d&#39;Ivoire", "status" => "1");
			$arrCountry["55"]=array("code" => "HR", "name" => "Croatia ", "status" => "1");
			$arrCountry["56"]=array("code" => "CU", "name" => "Cuba", "status" => "1");
			$arrCountry["57"]=array("code" => "CY", "name" => "Cyprus", "status" => "1");
			$arrCountry["58"]=array("code" => "CZ", "name" => "Czech Republic", "status" => "1");
			$arrCountry["59"]=array("code" => "DK", "name" => "Denmark", "status" => "1");
			$arrCountry["60"]=array("code" => "DJ", "name" => "Djibouti", "status" => "1");
			$arrCountry["61"]=array("code" => "DM", "name" => "Dominica", "status" => "1");
			$arrCountry["62"]=array("code" => "DO", "name" => "Dominican Republic", "status" => "1");
			$arrCountry["63"]=array("code" => "EC", "name" => "Ecuador", "status" => "1");
			$arrCountry["64"]=array("code" => "EG", "name" => "Egypt", "status" => "1");
			$arrCountry["65"]=array("code" => "SV", "name" => "El Salvador", "status" => "1");
			$arrCountry["66"]=array("code" => "GQ", "name" => "Equatorial Guinea (Guinea Ecuatorial)", "status" => "1");
			$arrCountry["67"]=array("code" => "ER", "name" => "Eritrea", "status" => "1");
			$arrCountry["68"]=array("code" => "EE", "name" => "Estonia", "status" => "1");
			$arrCountry["69"]=array("code" => "ET", "name" => "Ethiopia", "status" => "1");
			$arrCountry["70"]=array("code" => "FK", "name" => "Falkland Islands", "status" => "1");
			$arrCountry["71"]=array("code" => "FO", "name" => "Faroe Islands", "status" => "1");
			$arrCountry["72"]=array("code" => "FJ", "name" => "Fiji", "status" => "1");
			$arrCountry["73"]=array("code" => "FI", "name" => "Finland", "status" => "1");
			$arrCountry["74"]=array("code" => "FR", "name" => "France", "status" => "1");
			$arrCountry["75"]=array("code" => "GF", "name" => "French Guiana", "status" => "1");
			$arrCountry["76"]=array("code" => "PF", "name" => "French Polynesia", "status" => "1");
			$arrCountry["77"]=array("code" => "TF", "name" => "French Southern Territories", "status" => "1");
			$arrCountry["78"]=array("code" => "GA", "name" => "Gabon", "status" => "1");
			$arrCountry["79"]=array("code" => "GM", "name" => "Gambia", "status" => "1");
			$arrCountry["80"]=array("code" => "GE", "name" => "Georgia", "status" => "1");
			$arrCountry["81"]=array("code" => "DE", "name" => "Germany", "status" => "1");
			$arrCountry["82"]=array("code" => "GH", "name" => "Ghana", "status" => "1");
			$arrCountry["83"]=array("code" => "GI", "name" => "Gibraltar", "status" => "1");
			$arrCountry["84"]=array("code" => "GR", "name" => "Greece", "status" => "1");
			$arrCountry["85"]=array("code" => "GL", "name" => "Greenland", "status" => "1");
			$arrCountry["86"]=array("code" => "GD", "name" => "Grenada", "status" => "1");
			$arrCountry["87"]=array("code" => "GP", "name" => "Guadeloupe", "status" => "1");
			$arrCountry["88"]=array("code" => "GU", "name" => "Guam", "status" => "1");
			$arrCountry["89"]=array("code" => "GT", "name" => "Guatemala", "status" => "1");
			$arrCountry["90"]=array("code" => "GG", "name" => "Guernsey", "status" => "1");
			$arrCountry["91"]=array("code" => "GN", "name" => "Guinea", "status" => "1");
			$arrCountry["92"]=array("code" => "GW", "name" => "Guinea-Bissau", "status" => "1");
			$arrCountry["93"]=array("code" => "GY", "name" => "Guyana", "status" => "1");
			$arrCountry["94"]=array("code" => "HT", "name" => "Haiti", "status" => "1");
			$arrCountry["95"]=array("code" => "HM", "name" => "Heard Island and McDonald Islands", "status" => "1");
			$arrCountry["96"]=array("code" => "HN", "name" => "Honduras", "status" => "1");
			$arrCountry["97"]=array("code" => "HK", "name" => "Hong Kong", "status" => "1");
			$arrCountry["98"]=array("code" => "HU", "name" => "Hungary", "status" => "1");
			$arrCountry["99"]=array("code" => "IS", "name" => "Iceland", "status" => "1");
			$arrCountry["100"]=array("code" => "IN", "name" => "India", "status" => "1");
			$arrCountry["101"]=array("code" => "ID", "name" => "Indonesia", "status" => "1");
			$arrCountry["102"]=array("code" => "IR", "name" => "Iran ", "status" => "1");
			$arrCountry["103"]=array("code" => "IQ", "name" => "Iraq", "status" => "1");
			$arrCountry["104"]=array("code" => "IE", "name" => "Ireland", "status" => "1");
			$arrCountry["105"]=array("code" => "IM", "name" => "Isle of Man", "status" => "1");
			$arrCountry["106"]=array("code" => "IL", "name" => "Israel", "status" => "1");
			$arrCountry["107"]=array("code" => "IT", "name" => "Italy", "status" => "1");
			$arrCountry["108"]=array("code" => "JM", "name" => "Jamaica", "status" => "1");
			$arrCountry["109"]=array("code" => "JP", "name" => "Japan", "status" => "1");
			$arrCountry["110"]=array("code" => "JE", "name" => "Jersey", "status" => "1");
			$arrCountry["111"]=array("code" => "JO", "name" => "Jordan", "status" => "1");
			$arrCountry["112"]=array("code" => "KZ", "name" => "Kazakhstan", "status" => "1");
			$arrCountry["113"]=array("code" => "KE", "name" => "Kenya", "status" => "1");
			$arrCountry["114"]=array("code" => "KI", "name" => "Kiribati", "status" => "1");
			$arrCountry["115"]=array("code" => "KW", "name" => "Kuwait", "status" => "1");
			$arrCountry["116"]=array("code" => "KG", "name" => "Kyrgyzstan", "status" => "1");
			$arrCountry["117"]=array("code" => "LA", "name" => "Laos", "status" => "1");
			$arrCountry["118"]=array("code" => "LV", "name" => "Latvia ", "status" => "1");
			$arrCountry["119"]=array("code" => "LB", "name" => "Lebanon", "status" => "1");
			$arrCountry["120"]=array("code" => "LS", "name" => "Lesotho", "status" => "1");
			$arrCountry["121"]=array("code" => "LR", "name" => "Liberia", "status" => "1");
			$arrCountry["122"]=array("code" => "LY", "name" => "Libya", "status" => "1");
			$arrCountry["123"]=array("code" => "LI", "name" => "Liechtenstein", "status" => "1");
			$arrCountry["124"]=array("code" => "LT", "name" => "Lithuania ", "status" => "1");
			$arrCountry["125"]=array("code" => "LU", "name" => "Luxembourg", "status" => "1");
			$arrCountry["126"]=array("code" => "MO", "name" => "Macao", "status" => "1");
			$arrCountry["127"]=array("code" => "MK", "name" => "Macedonia", "status" => "1");
			$arrCountry["128"]=array("code" => "MG", "name" => "Madagascar", "status" => "1");
			$arrCountry["129"]=array("code" => "MW", "name" => "Malawi", "status" => "1");
			$arrCountry["130"]=array("code" => "MY", "name" => "Malaysia", "status" => "1");
			$arrCountry["131"]=array("code" => "MV", "name" => "Maldives", "status" => "1");
			$arrCountry["132"]=array("code" => "ML", "name" => "Mali", "status" => "1");
			$arrCountry["133"]=array("code" => "MT", "name" => "Malta", "status" => "1");
			$arrCountry["134"]=array("code" => "MH", "name" => "Marshall Islands", "status" => "1");
			$arrCountry["135"]=array("code" => "MQ", "name" => "Martinique", "status" => "1");
			$arrCountry["136"]=array("code" => "MR", "name" => "Mauritania ", "status" => "1");
			$arrCountry["137"]=array("code" => "MU", "name" => "Mauritius", "status" => "1");
			$arrCountry["138"]=array("code" => "YT", "name" => "Mayotte", "status" => "1");
			$arrCountry["139"]=array("code" => "MX", "name" => "Mexico", "status" => "1");
			$arrCountry["140"]=array("code" => "FM", "name" => "Micronesia", "status" => "1");
			$arrCountry["141"]=array("code" => "MD", "name" => "Moldova", "status" => "1");
			$arrCountry["142"]=array("code" => "MC", "name" => "Monaco", "status" => "1");
			$arrCountry["143"]=array("code" => "MN", "name" => "Mongolia", "status" => "1");
			$arrCountry["144"]=array("code" => "ME", "name" => "Montenegro", "status" => "1");
			$arrCountry["145"]=array("code" => "MS", "name" => "Montserrat", "status" => "1");
			$arrCountry["146"]=array("code" => "MA", "name" => "Morocco", "status" => "1");
			$arrCountry["147"]=array("code" => "MZ", "name" => "Mozambique", "status" => "1");
			$arrCountry["148"]=array("code" => "MM", "name" => "Myanmar (Burma)", "status" => "1");
			$arrCountry["149"]=array("code" => "NA", "name" => "Namibia", "status" => "1");
			$arrCountry["150"]=array("code" => "NR", "name" => "Nauru", "status" => "1");
			$arrCountry["151"]=array("code" => "NP", "name" => "Nepal", "status" => "1");
			$arrCountry["152"]=array("code" => "NL", "name" => "Netherlands", "status" => "1");
			$arrCountry["153"]=array("code" => "AN", "name" => "Netherlands Antilles", "status" => "1");
			$arrCountry["154"]=array("code" => "NC", "name" => "New Caledonia", "status" => "1");
			$arrCountry["155"]=array("code" => "NZ", "name" => "New Zealand", "status" => "1");
			$arrCountry["156"]=array("code" => "NI", "name" => "Nicaragua", "status" => "1");
			$arrCountry["157"]=array("code" => "NE", "name" => "Niger", "status" => "1");
			$arrCountry["158"]=array("code" => "NG", "name" => "Nigeria", "status" => "1");
			$arrCountry["159"]=array("code" => "NU", "name" => "Niue", "status" => "1");
			$arrCountry["160"]=array("code" => "NF", "name" => "Norfolk Island", "status" => "1");
			$arrCountry["161"]=array("code" => "MP", "name" => "Northern Mariana Islands", "status" => "1");
			$arrCountry["162"]=array("code" => "KP", "name" => "North Korea", "status" => "1");
			$arrCountry["163"]=array("code" => "NO", "name" => "Norway", "status" => "1");
			$arrCountry["164"]=array("code" => "OM", "name" => "Oman", "status" => "1");
			$arrCountry["165"]=array("code" => "PK", "name" => "Pakistan", "status" => "1");
			$arrCountry["166"]=array("code" => "PW", "name" => "Palau", "status" => "1");
			$arrCountry["167"]=array("code" => "PS", "name" => "Palestinian Territories", "status" => "1");
			$arrCountry["168"]=array("code" => "PA", "name" => "Panama", "status" => "1");
			$arrCountry["169"]=array("code" => "PG", "name" => "Papua New Guinea", "status" => "1");
			$arrCountry["170"]=array("code" => "PY", "name" => "Paraguay", "status" => "1");
			$arrCountry["171"]=array("code" => "PE", "name" => "Peru ", "status" => "1");
			$arrCountry["172"]=array("code" => "PH", "name" => "Philippines", "status" => "1");
			$arrCountry["173"]=array("code" => "PN", "name" => "Pitcairn", "status" => "1");
			$arrCountry["174"]=array("code" => "PL", "name" => "Poland", "status" => "1");
			$arrCountry["175"]=array("code" => "PT", "name" => "Portugal", "status" => "1");
			$arrCountry["176"]=array("code" => "PR", "name" => "Puerto Rico", "status" => "1");
			$arrCountry["177"]=array("code" => "QA", "name" => "Qatar", "status" => "1");
			$arrCountry["178"]=array("code" => "RE", "name" => "Reunion", "status" => "1");
			$arrCountry["179"]=array("code" => "RO", "name" => "Romania ", "status" => "1");
			$arrCountry["180"]=array("code" => "RU", "name" => "Russia", "status" => "1");
			$arrCountry["181"]=array("code" => "RW", "name" => "Rwanda", "status" => "1");
			$arrCountry["182"]=array("code" => "SH", "name" => "Saint Helena", "status" => "1");
			$arrCountry["183"]=array("code" => "KN", "name" => "Saint Kitts and Nevis", "status" => "1");
			$arrCountry["184"]=array("code" => "LC", "name" => "Saint Lucia", "status" => "1");
			$arrCountry["185"]=array("code" => "PM", "name" => "Saint Pierre and Miquelon", "status" => "1");
			$arrCountry["186"]=array("code" => "VC", "name" => "Saint Vincent and the Grenadines", "status" => "1");
			$arrCountry["187"]=array("code" => "WS", "name" => "Samoa", "status" => "1");
			$arrCountry["188"]=array("code" => "SM", "name" => "San Marino", "status" => "1");
			$arrCountry["189"]=array("code" => "ST", "name" => "São Tomé and Príncipe", "status" => "1");
			$arrCountry["190"]=array("code" => "SA", "name" => "Saudi Arabia", "status" => "1");
			$arrCountry["191"]=array("code" => "SN", "name" => "Senegal", "status" => "1");
			$arrCountry["192"]=array("code" => "RS", "name" => "Serbia ", "status" => "1");
			$arrCountry["193"]=array("code" => "CS", "name" => "Serbia and Montenegro", "status" => "1");
			$arrCountry["194"]=array("code" => "SC", "name" => "Seychelles", "status" => "1");
			$arrCountry["195"]=array("code" => "SL", "name" => "Sierra Leone", "status" => "1");
			$arrCountry["196"]=array("code" => "SG", "name" => "Singapore", "status" => "1");
			$arrCountry["197"]=array("code" => "SK", "name" => "Slovakia", "status" => "1");
			$arrCountry["198"]=array("code" => "SI", "name" => "Slovenia", "status" => "1");
			$arrCountry["199"]=array("code" => "SB", "name" => "Solomon Islands", "status" => "1");
			$arrCountry["200"]=array("code" => "SO", "name" => "Somalia", "status" => "1");
			$arrCountry["201"]=array("code" => "ZA", "name" => "South Africa", "status" => "1");
			$arrCountry["202"]=array("code" => "GS", "name" => "South Georgia and the South Sandwich Islands", "status" => "1");
			$arrCountry["203"]=array("code" => "KR", "name" => "South Korea", "status" => "1");
			$arrCountry["204"]=array("code" => "ES", "name" => "Spain", "status" => "1");
			$arrCountry["205"]=array("code" => "LK", "name" => "Sri Lanka", "status" => "1");
			$arrCountry["206"]=array("code" => "SD", "name" => "Sudan", "status" => "1");
			$arrCountry["207"]=array("code" => "SR", "name" => "Suriname", "status" => "1");
			$arrCountry["208"]=array("code" => "SJ", "name" => "Svalbard and Jan Mayen", "status" => "1");
			$arrCountry["209"]=array("code" => "SZ", "name" => "Swaziland", "status" => "1");
			$arrCountry["210"]=array("code" => "SE", "name" => "Sweden", "status" => "1");
			$arrCountry["211"]=array("code" => "CH", "name" => "Switzerland ", "status" => "1");
			$arrCountry["212"]=array("code" => "SY", "name" => "Syria", "status" => "1");
			$arrCountry["213"]=array("code" => "TW", "name" => "Taiwan", "status" => "1");
			$arrCountry["214"]=array("code" => "TJ", "name" => "Tajikistan", "status" => "1");
			$arrCountry["215"]=array("code" => "TZ", "name" => "Tanzania", "status" => "1");
			$arrCountry["216"]=array("code" => "TH", "name" => "Thailand", "status" => "1");
			$arrCountry["217"]=array("code" => "TL", "name" => "Timor-Leste", "status" => "1");
			$arrCountry["218"]=array("code" => "TG", "name" => "Togo", "status" => "1");
			$arrCountry["219"]=array("code" => "TK", "name" => "Tokelau", "status" => "1");
			$arrCountry["220"]=array("code" => "TO", "name" => "Tonga", "status" => "1");
			$arrCountry["221"]=array("code" => "TT", "name" => "Trinidad and Tobago", "status" => "1");
			$arrCountry["222"]=array("code" => "TN", "name" => "Tunisia", "status" => "1");
			$arrCountry["223"]=array("code" => "TR", "name" => "Turkey", "status" => "1");
			$arrCountry["224"]=array("code" => "TM", "name" => "Turkmenistan ", "status" => "1");
			$arrCountry["225"]=array("code" => "TC", "name" => "Turks and Caicos Islands", "status" => "1");
			$arrCountry["226"]=array("code" => "TV", "name" => "Tuvalu", "status" => "1");
			$arrCountry["227"]=array("code" => "UG", "name" => "Uganda", "status" => "1");
			$arrCountry["228"]=array("code" => "UA", "name" => "Ukraine", "status" => "1");
			$arrCountry["229"]=array("code" => "AE", "name" => "United Arab Emirates", "status" => "1");
			$arrCountry["230"]=array("code" => "GB", "name" => "United Kingdom", "status" => "1");
			$arrCountry["231"]=array("code" => "US", "name" => "United States", "status" => "1");
			$arrCountry["232"]=array("code" => "UM", "name" => "United States minor outlying islands", "status" => "1");
			$arrCountry["233"]=array("code" => "UY", "name" => "Uruguay", "status" => "1");
			$arrCountry["234"]=array("code" => "UZ", "name" => "Uzbekistan ", "status" => "1");
			$arrCountry["235"]=array("code" => "VU", "name" => "Vanuatu", "status" => "1");
			$arrCountry["236"]=array("code" => "VA", "name" => "Vatican City ", "status" => "1");
			$arrCountry["237"]=array("code" => "VE", "name" => "Venezuela", "status" => "1");
			$arrCountry["238"]=array("code" => "VN", "name" => "Vietnam", "status" => "1");
			$arrCountry["239"]=array("code" => "VG", "name" => "Virgin Islands, British", "status" => "1");
			$arrCountry["240"]=array("code" => "VI", "name" => "Virgin Islands, U.S.", "status" => "1");
			$arrCountry["241"]=array("code" => "WF", "name" => "Wallis and Futuna", "status" => "1");
			$arrCountry["242"]=array("code" => "EH", "name" => "Western Sahara", "status" => "1");
			$arrCountry["243"]=array("code" => "YE", "name" => "Yemen", "status" => "1");
			$arrCountry["245"]=array("code" => "ZM", "name" => "Zambia", "status" => "1");
			$arrCountry["246"]=array("code" => "ZW", "name" => "Zimbabwe", "status" => "1");
		
			return $arrCountry;
		}	
}