import 'package:flutter/material.dart';
void main() {
  
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override

 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Flutter Demo',
 debugShowCheckedModeBanner: false,
 theme: ThemeData(
 colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
 useMaterial3: true,
 ),
 home: const MyHomePage(title: 'Flutter Demo Home Page'),
 );
 }
}
class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key, required this.title});
 final String title;
 @override
 State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController idController = TextEditingController();
  TextEditingController psController = TextEditingController();
  var bgColor = Colors.green.shade100;
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 backgroundColor: Theme.of(context).colorScheme.inversePrimary,
 title: Text('Login '),
 ),
 body: Container(
 color: bgColor,
 child: Center(

 child: Container(
 //color: Color.fromARGB(255, 209, 238, 213),
 width: 300,
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Text(
 '--Log in--',
 style:
 TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
 ),
 SizedBox(
 height: 21,
 ),
 TextField(
 controller: idController,
 decoration: InputDecoration(
 label: Text('Email'),
 prefixIcon: Icon(Icons.person)),
 keyboardType: TextInputType.emailAddress,
 ),
 SizedBox(
 height: 21,
 ),
 TextField(
controller: psController,
 decoration: InputDecoration(
 label: Text('password'),
 prefixIcon: Icon(Icons.key)),
 keyboardType: TextInputType.name,
 ),
 SizedBox(
 height: 20,

 ),
 ElevatedButton(
          child: const Text('Log in'),
          onPressed: () {
          print(idController.text);
          print(psController.text);           
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Home(
                id: idController.text,
                ps: psController.text,))
              );}
              ),
 ]),
 ),
 ),
 ));
 }}





class Home extends StatelessWidget {
  final String id;
  final String ps;

  const Home ({
    Key? key,
    required this.id,
    required this.ps,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent,
        title: const Text('Home'),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(child: Column(
          children: [
            Text('UserID : $id '),
            Text('Password : $ps')
          ],
        )
        ),

        
    
     ) );
  }
}