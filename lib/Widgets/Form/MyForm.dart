import 'package:flutter/material.dart';

class MyForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm>{
  GlobalKey<FormState>formKey = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameCtrl,
            decoration: InputDecoration(
              labelText: "Nombre",
            ),
            validator: validateName,
          ),
          TextFormField(
            controller: emailCtrl,
            decoration: InputDecoration(
              labelText: "Correo",
            ),
            validator: validateEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller: mobileCtrl,
            decoration: InputDecoration(
              labelText: "Teléfono",
            ),
            validator: validateMobile,
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            controller: passwordCtrl,
            decoration: InputDecoration(
              labelText: "Contraseña",
            ),
            obscureText: true,
          ),
          TextFormField(
            controller: repeatPassCtrl,
            decoration: InputDecoration(
              labelText: "Repetir contraseña",
            ),
            validator: validatePassword,
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: save,
            child: Text("Guardar"),
          ),
        ],
      ),
    );
  }

  save(){
    if (formKey.currentState!.validate()){
      print("Nombre: ${nameCtrl.text}");
      print("Nombre: ${emailCtrl.text}");
      print("Nombre: ${mobileCtrl.text}");
      print("Nombre: ${passwordCtrl.text}");
      print("Nombre: ${repeatPassCtrl.text}");
      formKey.currentState?.reset();
    }
  }

  String? validateName(String? value){
    if (value?.length==0){
      return "El nombre es necesario";
    }
    return null;
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

  String? validateMobile(String? value){
    if (value?.length==0){
      return "El teléfono es necesario";
    }
    else if(value?.length!=10){
      return "El número debe tener 10 dígitos";
    }
    return null;
  }

  String? validatePassword(String? value){
    if(value!=passwordCtrl.text.toString()){
      return "Las contraseñas no coinciden";
    }
    return null;
  }
}