import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';


class Products extends StatelessWidget {
  final List<String> products;
  String urlBase="https://img.youtube.com/vi/";
  Products(this.products);
  BuildContext context;

  Widget _buildProductItem(BuildContext context, int index) {

    return GestureDetector(
      child: Column(
        children: <Widget>[
          Image.network(urlBase+products[index]+"/default.jpg"),
          Text(products[index], style: TextStyle(color: Colors.deepPurple)),
        ],
      ),
      onTap: (){ Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp(products[index])),
      );
    }
      /*Scaffold
          .of(context)
          .showSnackBar(SnackBar(content: Text(products[index])))*/,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,

    );
  }
  void onTapped(String post) {
    // navigate to the next screen.
  }


}

class MyApp extends StatefulWidget {
  String prod;
  MyApp(String this.prod);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState(prod);
  }
}

class _MyAppState extends State<MyApp> {
  String product;
  _MyAppState(this.product);

  @override
  void initState() {
    super.initState();
    var youtube = new FlutterYoutube();
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "jiji",
        videoUrl: "https://www.youtube.com/watch?v="+product,
        autoPlay: true, //default falase
        fullScreen: false //default false
    );

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: Text('Long List App')),
          body: Center(
            child: Text("asdasd"),
          ),
            ));
  }
// ignore: non_type_as_type_argument

}

