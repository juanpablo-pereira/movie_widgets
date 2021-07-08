import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/widget_list_dimensions.dart';

class WidgetItemPage extends StatelessWidget {
  const WidgetItemPage({
    Key? key,
    required this.widgetType,
    required this.title,
  }) : super(key: key);

  final Widget widgetType;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.nanumGothic(),
        ),
        backgroundColor: Colors.deepPurple.shade500,
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: WidgetListDimensions.paddingVerticalLarge,
                ),
                widgetType,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
