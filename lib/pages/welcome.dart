import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            const Text.rich(
              TextSpan(
                text: 'Welcome to ',
                style:TextStyle(fontSize: 40,fontWeight:FontWeight.w500 ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Elude',
                      style: TextStyle(color:Color.fromARGB(255, 255, 165, 0),fontSize: 40,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
        
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 233, 112, 6)),foregroundColor:MaterialStatePropertyAll(Colors.black)),
            child:const Text("Sign in",style: TextStyle(fontSize: 15),),
            onPressed: (){
              debugPrint("Pressed Sign In");
            }, 
          ),
          
        ], 
      ),
    );
  }
}