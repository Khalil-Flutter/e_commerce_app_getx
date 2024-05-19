import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Email',
          'internet_exception':
              "We're unable tp show results.\nPlease check your data\nconnection.",
          'general_exception':
              "We're unable to process your request.\n Please try again",
          'welcome_back': 'Welcome\nBack',
          'login': 'Login Screen',
          'password_hint': 'Password',
        },
        'ur_PK': {
          'email_hint': 'ای میل',
        },
      };
}
