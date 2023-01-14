import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_app/models/webtoon_detail_model.dart';
import 'package:webtoon_app/models/webtoon_episode_model.dart';
import 'package:webtoon_app/models/webtoon_model.dart';

class Api {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(res.body);
      for (dynamic webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtooneDetailModel> getToonById(String id) async {
    final url = Uri.parse('$baseUrl/$id');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final webtoon = jsonDecode(res.body);
      return WebtooneDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodes(String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];
    final url = Uri.parse('$baseUrl/$id/episodes');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final episodes = jsonDecode(res.body);
      for (var episode in episodes) {
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}
