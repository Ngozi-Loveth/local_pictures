import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:input_form_field/input_form_field.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
   final TextEditingController _passwordcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Center(
            child: Text("WELCOME BACK",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),),


          ),
           const Gap(30),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InputFormField(
                  textEditingController: _emailcontroller,
                  labelText: "Email:",
                  hintText: "Text",
                  bottomMargin: 10, // Optional
                ),
           ),

          const Gap(10),

        Padding(padding: const EdgeInsets.all(8.0),
        child: InputFormField(
                textEditingController: _passwordcontroller,
                labelText: "Password:",
                hintText: "*****",
                obscuringCharacter: "*",
                password: EnabledPassword(
                  showPasswordIcon: const Icon(
                    Icons.add,
                    color: Colors.amber,
                  ),
                  hidePasswordIcon: const Icon(
                    Icons.visibility_off_rounded,
                    color: Colors.amber,
                  ),
                ),
                bottomMargin: 10, // Optional
              ),),
              ElevatedButton(onPressed: (() {
              } ), child: const Text("login")),

              const Gap(10),
              
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text("Forget Password", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold), ),
                
                  ),
                ],

              ),

               const Gap(10),
              
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text("You Don't Have An Account?", style: TextStyle(color: Colors.black, fontSize: 15,), ),
                   
                  ),
                  TextButton(onPressed: () {
                    
                  }, child: const Text("SIGN UP"))
                ],

              )
        ],
      )),
    );
  }
}