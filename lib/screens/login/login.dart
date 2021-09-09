import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 100,),
          Padding(padding: EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[ BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0,5)
                  ),
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('LOGIN', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.orange
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text('', style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: 'email de usuario',
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                            color:  Colors.grey,
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
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: TextField(
                      autofocus: false,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Senha',
                          prefixIcon: Icon(Icons.security),
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(
                            color:  Colors.grey,
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
                  Container(

                    padding: EdgeInsets.all(5),
                    child: Text('Recuperar senha', style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),),
                  ),
                  SizedBox(height: 20,),

                  InkWell(
                    onTap: (){
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(20),
                            child: Text('Login', style: TextStyle(
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
}