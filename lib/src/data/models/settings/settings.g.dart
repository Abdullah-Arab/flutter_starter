// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      theme: $enumDecodeNullable(_$ThemeModeEnumMap, json['theme']),
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('theme', _$ThemeModeEnumMap[instance.theme]);
  writeNotNull('locale', instance.locale);
  return val;
}

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
