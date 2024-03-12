import 'package:flutter/material.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: Divider(
          thickness: 1,
        )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Or'),
        ),
        Expanded(
            child: Divider(
          thickness: 1,
        )),
      ],
    );
  }
}
