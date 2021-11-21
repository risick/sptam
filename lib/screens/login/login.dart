import 'package:flutter/material.dart';
import 'package:untitled/helper/validators.dart';
import 'package:untitled/models/usuario.dart';
import 'package:untitled/models/UserManager.dart';
class Login extends StatelessWidget{
  @override

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      backgroundColor: Colors.orange,
      body:    Form(
      key: formKey,
        child: ListView(
          children: [
            SizedBox(height: 80,),
            Padding(padding: EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                      child:  TextFormField(
                        controller: emailController,
                        autofocus: false,
                        decoration: InputDecoration(
                            hintText: 'Email de usuario',
                            // prefixIcon: Icon(Icons.person),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color:  Colors.grey,
                              fontSize: 14,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            ),

                        ),
                       // validator:
                        validator: (email){
                          if(!emailValid(email!))
                            return 'E-mail inválido';
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                      child:  TextFormField(
                        controller: passController,
                        autofocus: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Senha',
                          //  prefixIcon: Icon(Icons.security),
                            contentPadding: EdgeInsets.all(10),
                            hintStyle: TextStyle(
                              color:  Colors.grey,
                              fontSize: 14,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            ),

                        ),
                        validator: (pass){
                          if(pass!.isEmpty || pass.length < 6)
                            return 'Senha inválida';
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: (){
                          print("Senha");
                        },
                        padding: EdgeInsets.zero,
                        child: const Text(
                            'Esqueci minha senha'
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){
                          if(formKey.currentState!.validate()){
                            print(emailController.text);
                            print(passController.text);
                            context.<UserManager>().signIn(
                                Usuario(
                                    email: emailController.text,
                                    password: passController.text
                                )
                            );
                        }
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.all(20),
                              child: Text('Login', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
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
      ),
    );
  }
}