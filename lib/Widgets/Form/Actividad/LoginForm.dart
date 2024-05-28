import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm>{
  GlobalKey<FormState>formKey = GlobalKey();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Form(
          key: formKey,
          child: Column(
            children:[
              Text(
                "Código Facilito",
                style: TextStyle(
                  fontSize: 40,
                  letterSpacing: 10,
                  fontFamily: "Teko",
                  color: Colors.blueGrey,
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:10),
                    child: Icon(
                      Icons.my_library_music,
                      color: Colors.pink[100],
                      size: 170,
                    ),
                  ),
                  Icon(
                    Icons.library_music_outlined,
                    color: Colors.blueGrey,
                    size: 170,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextFormField(
                  controller: emailCtrl,
                  decoration: decoration("Correo",Icons.email_outlined),
                  validator: validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextFormField(
                  controller: passwordCtrl,
                  decoration: decoration("Contraseña",Icons.lock_outline),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      text: "¿Olvidaste tu contraseña? ",
                      style: TextStyle(color: Colors.blueGrey),
                      children: [
                        TextSpan(
                          text: "Recuperarla",
                          style: TextStyle(
                            color: Colors.pink[100],
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.pink[100],
                    shadowColor: Colors.blueGrey,
                    side: BorderSide(
                      color: Color(10),
                      width: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {
                    print("TextButton");
                  },
                  child: Text("Guardar"),
                ),
              ),
            ],
          ),),
      ),
    );
  }

  decoration(String text, IconData icon){
    return InputDecoration(
      labelText: text,
      prefixIcon: Icon(
        icon,
        color: Colors.pink[100],
      ),
      labelStyle: TextStyle(color: Colors.blueGrey),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.pink.withOpacity(0.3),
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.pink.withOpacity(0.3),
          width: 1,
        ),
      ),
    );
  }

  String? validateEmail(String? value){
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(pattern);

    if (value?.length==0){
      return "El email es necesario";
    }
    else if(!regExp.hasMatch(value.toString())){
      return "Correo inválido";
    }
    return null;
  }

  save(){
    if (formKey.currentState!.validate()){
      print("Nombre ${emailCtrl.text}");
      formKey.currentState?.reset();
    }
  }
}