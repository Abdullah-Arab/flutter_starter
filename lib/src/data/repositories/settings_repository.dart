import '/src/data/models/settings/settings.dart';
import '/src/services/api/api_service.dart';

class SettingsRepository {
  late ApiService _apiService;

  SettingsRepository(this._apiService);

  Future<String> loadSettings(Settings settings) async {
    return await _apiService.setSettings(settings);
  }
}
