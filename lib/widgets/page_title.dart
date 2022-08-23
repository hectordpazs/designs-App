import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white );
    return SafeArea(
      bottom:false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('Classify transaction', style: textStyle,),
            SizedBox(height: 10,),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 16, color: Colors.white ))
          ],
        ),
      ),
    );
  }
}