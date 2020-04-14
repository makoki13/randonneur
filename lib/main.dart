import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Shadow> sombraTexto = [
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 3.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 8.0,
        color: Color.fromARGB(125, 0, 0, 0),
      ),
    ];

    final List<Shadow> sombraTexto2 = [
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 3.0,
        color: Color.fromARGB(255, 125, 125, 125),
      ),
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 8.0,
        color: Color.fromARGB(125, 125, 125, 125),
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Randonneur 2.0',
            style: TextStyle(
              shadows: sombraTexto,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 20.0,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Icon(
                        Icons.directions_bike,
                        size: 32.0,
                        color: Colors.teal.shade500,
                      ),
                      title: Text(
                        'Prueba Actual',
                        style: TextStyle(
                          color: Colors.teal.shade800,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                          shadows: sombraTexto2,
                        ),
                      ),
                      subtitle: Text('Ninguna',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontFamily: 'SourceSansPro',
                          )),
                    )),
              ),
              SizedBox(
                height: 40.0,
                width: 200.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 10,
                    child: RaisedButton(
                      onPressed: null,
                      color: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        padding: const EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'ACTIVAR PRUEBA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            shadows: sombraTexto2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 10,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 40.0,
                        padding: const EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'CREAR PRUEBA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black,
                            shadows: sombraTexto2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.settings),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
