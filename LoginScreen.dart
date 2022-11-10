import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Facebook',
        textAlign: TextAlign.center,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(
                height: 35.0,
              ),
              TextFormField(
                controller: emailController ,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted:(value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                decoration: InputDecoration(
                labelText: 'Email Address',
                prefixIcon: Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder(),
              ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted:(value){
                  print(value);
                },
                onChanged: (value){
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                color: Colors.blue[900],
                child: MaterialButton(
                  onPressed: (){
                  print(emailController.text);
                  print(passwordController.text);
                  },
                  child: Text('LOGIN',
                 style: TextStyle(
                   color: Colors.white70,
                 ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account'),
                  TextButton(onPressed: (){},
                      child:Text('Register Now'))
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
