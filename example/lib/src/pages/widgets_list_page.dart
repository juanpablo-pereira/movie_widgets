import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets_list_item.dart';
import '../model/widgets_list_routing.dart';

class WidgetsListPage extends StatelessWidget {
  const WidgetsListPage(
    this.widgets, {
    Key? key,
  }) : super(key: key);

  final List<WidgetsListRouting> widgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        title: Text(
          'Movies widgets list',
          style: GoogleFonts.nanumGothic(),
        ),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              WidgetsListItem(
                label: widgets[index].label,
                widgetType: widgets[index].widgetType,
                icon: widgets[index].icon,
              ),
              Divider(
                color: Colors.grey.shade500,
              ),
            ],
          );
        },
      ),
    );
  }
}
