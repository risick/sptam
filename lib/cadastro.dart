import 'package:flutter/material.dart';
import 'package:untitled/models/usuario.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuarioState createState() => new _CadastroUsuarioState();
}
  class _CadastroUsuarioState extends State<CadastroUsuario> {

    late String _mySelection ;
    List<Map> _myJson = [
      {"id": 0, "usuario": "consumidor"},
      {"id": 1, "usuario": "vendedor"}
    ];

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [ BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 5)
                    ),
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Cadastro de Novo Usuario', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.orange
                      ),),
                    ),
                    SizedBox(height: 30,),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: 'Nome Completo',
                            //prefixIcon: Icon(Icons.person),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: 'E-mail',
                            //prefixIcon: Icon(Icons.security),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: 'Numero de Telefone',
                            // prefixIcon: Icon(Icons.security),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Senha',
                            // prefixIcon: Icon(Icons.security),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: 30),
                      child: TextField(
                        autofocus: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Repita a Senha',
                            //prefixIcon: Icon(Icons.security),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Row(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.list),
                        ),
                        VerticalDivider(
                          width: 40.0,
                        ),
                        new Container(
                          //margin: EdgeInsets.only(right: 80.0),
                          height: 50.0,
                          width: 180.0,
                          child: new DropdownButton<String>(
                            isDense: true,
                            hint: new Text(
                              "Cadastrar-se como?", style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),),
                            iconSize: 40.0,
                            elevation: 10,
                            value: _mySelection,
                            onChanged: (newValue) {
                               setState(() {
                                _mySelection = newValue!;
                              });
                              print(_mySelection);
                            },
                            items: _myJson.map((Map map) {
                              return new DropdownMenuItem<String>(
                                //value: map["id"].toString(),
                                value: map["usuario"].toString(),
                                child: new Text(
                                  map["usuario"].toString(),
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.all(20),
                              child: Text('Cadastrar', style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      );
    }
//final Usuario _usuario= Usuario();

  }