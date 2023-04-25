import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'customer': 'Customer',
          'seller': 'Seller',
          'or': 'or',
          'login': 'Login',
          'phonenumber': 'Phone number',
          'username': 'Username',
          'password': "Password",
          'forget': 'Forget Password? /Reset',
          'vegetables': 'Vegetables',
          'fruits': 'Fruits',
          'washer': 'Washer',
          'food': 'Food',
          'clothes': 'Clothes Salesman'
        },
        'hi_IN': {
          'customer': 'ग्राहक',
          'seller': 'विक्रेता',
          'or': 'या',
          'login': 'लॉग इन',
          'phonenumber': 'फ़ोन नंबर',
          'username': 'उपयोगकर्ता नाम',
          'password': "पासवर्ड",
          'forget': 'भूल गया',
          'vegetables': 'सब्ज़ियाँ',
          'fruits': 'फल',
          'washer': 'धोबी',
          'food': 'खाना',
          'clothes': 'कपड़े बेचने वाला'
        },
      };
}
