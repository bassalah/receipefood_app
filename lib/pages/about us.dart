import 'package:flutter/material.dart';

class aboutUs extends StatelessWidget {
  const aboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Home cooks are our heroes—it's as simple as that. Allrecipes is a community built by and for kitchen experts: The cooks who will dedicate the weekend to a perfect beef bourguignon but love the simplicity of a slow-cooker rendition, too. The bakers who labor over a showstopping 9-layer cake but will just as happily"),
          Text("doctor boxed brownies for a decadent weeknight dessert. The entertainers who just want a solid snack spread, without tons of dirty dishes at the end of the night"),
      ]),
    );
  }
}
