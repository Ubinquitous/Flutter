import 'package:flutter/material.dart';
import 'package:webtoon_app/models/webtoon_model.dart';
import 'package:webtoon_app/widgets/webtoon_widget.dart';

ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
  return ListView.separated(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    scrollDirection: Axis.horizontal,
    itemCount: snapshot.data!.length,
    itemBuilder: (context, index) {
      var webtoon = snapshot.data![index];
      return Webtoon(
        title: webtoon.title,
        thumb: webtoon.thumb,
        id: webtoon.id,
      );
    },
    separatorBuilder: (context, index) => const SizedBox(width: 16),
  );
}
