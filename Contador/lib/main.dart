import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  build(context){
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State{
  int contador = 0;

  void Click(){
    //aqui vou escrever a ação
    setState(() {
      contador++;
    });
  }
    @override
    build(context){
      return Scaffold(
        appBar: AppBar(title: const Text("Contador", style: TextStyle(color: Colors.amber),),),
        body: Center(
          child: GestureDetector(
            child:  Text(" O contador vale $contador",
            style: const TextStyle(fontSize: 50 , 
            color: Colors.amber,
            fontWeight: FontWeight.bold
            ) ,

            ),
            onLongPress: (){
              setState(() {
                contador++;
              });
            },

          ),


        ),
        floatingActionButton: 
        FloatingActionButton(
          onPressed: Click,
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),

          ),

      );
    }
}

