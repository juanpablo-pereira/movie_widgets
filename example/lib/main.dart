import 'package:flutter/material.dart';
import 'package:movie_widgets/movie_widgets.dart';

import 'src/model/widgets_list_routing.dart';
import 'src/pages/widgets_list_page.dart';
import 'src/utils/example_movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<WidgetsListRouting> widgets = [
    WidgetsListRouting(
      label: 'Movie information',
      widgetType: MovieInfoDetail(
        title: ExampleMovie.title,
        overview: ExampleMovie.overview,
        isForAdults: ExampleMovie.isAdult,
        releaseDate: ExampleMovie.releaseDate,
      ),
      icon: Icons.text_fields_outlined,
    ),
    WidgetsListRouting(
      label: 'Movie poster image',
      widgetType: MoviePosterDetail(
        imagePath: ExampleMovie.posterPath,
      ),
      icon: Icons.image_outlined,
    ),
    WidgetsListRouting(
      label: 'Movie rating indicator',
      widgetType: MovieRatingDetail(
        voteAverage: ExampleMovie.rating,
      ),
      icon: Icons.star_sharp,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies Widgets List',
      home: WidgetsListPage(widgets),
    );
  }
}
