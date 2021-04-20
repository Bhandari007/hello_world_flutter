import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World App title",
      home: HelloPage(),
    );
  }
}




class HelloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World Travel'),
          backgroundColor: Colors.deepPurple,
          ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
            child: Column(
              children: <Widget>[
                Text('Hello World Travel',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Discover the world',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.deepPurpleAccent
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network('https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',height: 350,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: ()=>contactUs(context),
                      child: Text('Contact Us')),
                )
              ],
            ),
            ),
          ),
        ),
      );
  }
}


void contactUs(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
    return (
    AlertDialog(
      title: Text('Contact Us'),
      content: Text('Mail us at: bmuskan007@gmail.com'),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: ()=>Navigator.of(context).pop(),
        )
      ],
    )
    );
      });
}

localizations(BuildContext context){
  return Localizations(
      locale: const Locale('en', 'US'),
  delegates: <LocalizationsDelegate<dynamic>>[
  DefaultWidgetsLocalizations.delegate,
  DefaultMaterialLocalizations.delegate,
  ]
  );
}