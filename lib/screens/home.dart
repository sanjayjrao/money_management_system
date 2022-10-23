// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:money_management_system/Components/dialogs.dart';
import 'package:money_management_system/Components/sidedrawer.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatelessWidget {
  final title;
  const ScreenHome({super.key, required String this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SizedBox(width: 230, child: SideDrawer()),
      appBar: AppBar(
        title: Text(title),
        //
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              // Icons.add,
              icon: const Icon(
                Icons.add,
                size: 27,
              ),
              onPressed: () {
                add(context);
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
