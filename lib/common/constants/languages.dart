import 'package:state_management/domain/entities/language_entity.dart';

class Languages {
  Languages._();
  static const languagesList = [
    LanguageEntity(value: 'English', code: 'en'),
    LanguageEntity(value: 'Spanish', code: 'es')
  ];
}
