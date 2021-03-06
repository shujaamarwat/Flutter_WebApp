import 'package:flutter/material.dart';

import 'color.dart';

class HeaderFormField {
  final String assetPath;
  final String title;
  final TextEditingController textController;

  const HeaderFormField({ this.assetPath, this.title, this.textController });
}

class HeaderForm extends StatelessWidget {
  final List<HeaderFormField> fields;

  const HeaderForm({ Key key, this.fields }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: kCranePurple800,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children:
            fields.map((field) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: field.textController,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(field.assetPath, height: 32, width: 32),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    fillColor: kCranePurple700,
                    filled: true,
                    labelText: field.title,
                    hasFloatingPlaceholder: false,
                  ),
                ),
              );
            }).toList(),
        ),
      ),
    );
  }
}