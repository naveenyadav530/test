import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:test/scroll_page.dart';

import 'json_model.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(child: ChildWidget()),
      ),
    ),
  );
}

class ChildWidget extends StatefulWidget {
  const ChildWidget({super.key});

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() async {
    final response = await get(
        Uri.parse("https://api.coindesk.com/v1/bpi/currentprice.json"));
    Welcome data = Welcome.fromJson(response.body);
  }

  Welcome model = Welcome();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.teal,
      child: Column(
        children: [
          Image.asset(
            "assets/images/bitcoin.png",
            height: 250,
            width: 250,
          ),
          Text(
            "Prize",
            style: TextStyle(fontSize: 30, color: Colors.amber),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            height: 250,
            child: CenterFadeScrollView(
              items: [
                Text('Red',
                    style: TextStyle(
                      fontSize: 24,
                    )),
                Text('Blue',
                    style: TextStyle(
                      fontSize: 24,
                    )),
                Text('Green',
                    style: TextStyle(
                      fontSize: 24,
                    )),
                Text('Yellow',
                    style: TextStyle(
                      fontSize: 24,
                    )),
                Text('Orange',
                    style: TextStyle(
                      fontSize: 24,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
