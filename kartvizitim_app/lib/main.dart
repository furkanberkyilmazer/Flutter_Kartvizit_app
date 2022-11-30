import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 90.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('assets/images/brkylmzr.jpg'),
                ),
                SizedBox(height: 30),
                Text(
                  'Furkan Berk Yılmazer',
                  style: TextStyle(
                    fontFamily: 'Tangerine-Bold',
                    fontSize: 45,
                    color: Colors.grey[200],
                  ),
                ),
                Text(
                  'Computer Engineer',
                  style: TextStyle(
                    fontFamily: 'Tangerine-Bold',
                    fontSize: 30,
                    color: Colors.grey[200],
                  ),
                ),
                SizedBox(height: 30),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'furkan_berk_yilmazer@hotmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.5,
                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Icon(
                      Icons.web,
                      color: Colors.white,
                    ),
                    title: Text(
                      'furkanberkyilmazer.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onTap: (){
                      _urlAc('http://furkanberkyilmazer.com');

                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+90 534 936 88 68',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _urlAc(String link) async {
  if(await canLaunchUrlString(link))
  {
    //await launch(link);
    await launchUrlString(link);

  }
  else
  {
    debugPrint('Yönlendirme sırasında bir hata oluştu.');
  }
}

/* ListTile yerine bunlar vardı ama listtile kendi formatladığı için ona kullandık
Row(
children: <Widget>[
Icon(
Icons.email,
color: Colors.white,
),
SizedBox(
width: 10.0,
),
Text(
'furkan_berk_yilmazer@hotmail.com',
style: TextStyle(
color: Colors.white,
fontSize: 20.0,
),
),
],
),*/
