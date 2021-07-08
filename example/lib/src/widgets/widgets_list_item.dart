import 'package:flutter/material.dart';

import '../pages/widget_item_page.dart';

class WidgetsListItem extends StatelessWidget {
  const WidgetsListItem({
    Key? key,
    required this.label,
    required this.widgetType,
    required this.icon,
  }) : super(key: key);

  final String label;
  final Widget widgetType;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(
        Icons.chevron_right_rounded,
        color: Colors.grey.shade50,
      ),
      leading: Icon(
        icon,
        color: Colors.grey.shade50,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: Colors.grey.shade50,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetItemPage(
              widgetType: widgetType,
              title: label,
            ),
          ),
        );
      },
    );
  }
}
