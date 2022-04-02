import 'package:daryouz/models/news_model.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  LatestPage({Key? key}) : super(key: key);

  static List<News> news = [
    News(
        title: '"O‘zbekistonda yo‘qotishlar bo‘ladi, ammo u boshda davlatlardan kamroq ziyon ko‘radi” – Ukrainadagi urush va Rossiyaga qarshi sanksiyalar ta’siri haqida tahlilchilar fikri',
        content: 'content',
        newsType: 'Iqtisodiyot',
        imageUrl: 'https://www.milliygvardiya.uz/uploads/news/a51758e542709a8e61349d89f269a569.jpg',
        date: '12.03.2021',
        time: '12:56',
        watchCount: '23948'),
    News(
        title: 'O‘zbekistonda Rossiya, Ukraina va Belarus bilan ishlovchi korxonalarga yengilliklar beriladi',
        content: 'content',
        newsType: 'Mahalliy',
        imageUrl: 'https://storage.kun.uz/source/thumbnails/_medium/8/xzUIUa5hHfgqry1kAYnv75oO-oHlmU8x_medium.jpg',
        date: '04.05.2021',
        time: '09:06',
        watchCount: '4532'),
    News(
        title: 'Imtihonda qo‘lga tushgan abituriyentlar kirish imtihonlaridan 5-7 yilgacha chetlashtirilishi mumkin',
        content: 'content',
        newsType: 'Xorijiy yangiliklar',
        imageUrl: 'https://21asr.uz/media/posts/thumbnails/a4d2add1-9245-4760-827d-900b429d2637.jpg',
        date: '18.07.2021',
        time: '19:35',
        watchCount: '12832'),
    News(
        title: '"O‘zbekistonda yo‘qotishlar bo‘ladi, ammo u boshda davlatlardan kamroq ziyon ko‘radi” – Ukrainadagi urush va Rossiyaga qarshi sanksiyalar ta’siri haqida tahlilchilar fikri',
        content: 'content',
        newsType: 'Iqtisodiyot',
        imageUrl: 'https://www.milliygvardiya.uz/uploads/news/a51758e542709a8e61349d89f269a569.jpg',
        date: '12.03.2021',
        time: '12:56',
        watchCount: '23948'),
    News(
        title: 'O‘zbekistonda Rossiya, Ukraina va Belarus bilan ishlovchi korxonalarga yengilliklar beriladi',
        content: 'content',
        newsType: 'Mahalliy',
        imageUrl: 'https://storage.kun.uz/source/thumbnails/_medium/8/xzUIUa5hHfgqry1kAYnv75oO-oHlmU8x_medium.jpg',
        date: '04.05.2021',
        time: '09:06',
        watchCount: '4532'),
    News(
        title: 'Imtihonda qo‘lga tushgan abituriyentlar kirish imtihonlaridan 5-7 yilgacha chetlashtirilishi mumkin',
        content: 'content',
        newsType: 'Xorijiy yangiliklar',
        imageUrl: 'https://21asr.uz/media/posts/thumbnails/a4d2add1-9245-4760-827d-900b429d2637.jpg',
        date: '18.07.2021',
        time: '19:35',
        watchCount: '12832'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          return newsItem(news[index]);
        });
  }

  Widget newsItem(News news) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                news.newsType,
                style:
                    const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "${news.time} | ${news.date} | ",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    news.watchCount,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                news.imageUrl,
                width: 120,
              ),
              const SizedBox(width: 12),
               Expanded(
                child: Text(
                  news.title,
                  style: const TextStyle(fontWeight: FontWeight.w500, height: 1.2),
                ),
              ),
            ],
          ),
          const Divider(thickness: 1.0)
        ],
      ),
    );
  }
}
