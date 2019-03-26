import 'package:flutter/material.dart';
import 'package:http/http.dart';
import './products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];

  @override
  void initState() {

    super.initState();

    _products.add('_MBwv0g1EIo');
    _products.add('RBRiMQzgop4');
    _products.add('hyqaa1Qr4Fw');
    _products.add('V8ak8raklkk');
    _products.add('9BX6c0vhUSE');
    _products.add('wpF2ol3KQvM');
    _products.add('wpF2ol3KQvM');
    _products.add('a2n0rnMAukE');
    _products.add('DdeVCQNXsL0');
    _products.add('DdeVCQNXsL0');
    _products.add('7GjOOyBoELw');
    _products.add('q42yI7GZSoU');
    _products.add('sIj1108PahY');
    _products.add('okKiWXi7Hsg');
    _products.add('okKiWXi7Hsg');
    _products.add('nLHIlpRa5SY');
    _products.add('kfmzchDZmD4');
    _products.add('IULYZequNIY');
    _products.add('8Lt-B5fN-hM');
    _products.add('HMWgskhtj14');
    String urlBase="https://i.ytimg.com/vi/";


  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: Text('Long List App')),
            body: Column(children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      splashColor: Colors.blueGrey,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _products.add('Laptop');


                        });
                      },
                      child: Text('MacBook'))),
              Expanded(child: Products(_products))
            ])));
  }
  // ignore: non_type_as_type_argument

}