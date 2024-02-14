import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int counter = 0;
    TextEditingController counterTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    counterTxt.text = counter.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Práctica 2 '),
        backgroundColor:const Color.fromARGB(137, 183, 157, 229),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            separador(18.5),
            titulo(),
            separador(30.5),
            creditos(),
            separador(25.5),
            contador(),
            ],
          ), 
        ),
        floatingActionButton: botones(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Row botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            foregroundColor: Colors.amber, 
            backgroundColor: Colors.pink, 
            onPressed: () {
              counter --;
              counterTxt.text = counter.toString();
              // print("Presionaste el botón");
              // print(counter);
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            foregroundColor: Colors.amber, 
            backgroundColor: Colors.pink, 
            onPressed: () {
              counter = 0;
              counterTxt.text = counter.toString();
              // print("Presionaste el botón");
              // print(counter);
            },
            child: const Icon(Icons.exposure_zero),
          ),
          FloatingActionButton(
            foregroundColor: Colors.amber, 
            backgroundColor: Colors.pink, 
            onPressed: () {
              counter ++;
              counterTxt.text = counter.toString();
              // print("Presionaste el botón");
              // print(counter);
            },
            child: const Icon(Icons.exposure_plus_1_outlined),
          ),
        ],
      );
  }

  Row creditos() {
    return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Text(
                  'App desarrollada por: ',
                  style: TextStyle(
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                Text(
                  'Isa Hernández',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold
                    )
                  )
              ],
            );
  }

  Text titulo() {
    return const Text(
            'Contador de taps',
            style: TextStyle(
            color: Colors.purple,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            ),
          );
  }

  SizedBox separador(double altura) {
    return SizedBox(
      height: altura
          );
  }

  Widget contador(){
    return SizedBox(
      width: 180.0,
      child: TextField(
        controller: counterTxt,
        enabled: false,
        style: const TextStyle(
          fontWeight: FontWeight.bold, 
          color: Color.fromARGB(100, 120, 0, 50),
          fontSize: 25.5,
          ),
        textAlign: TextAlign.center,
        
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          icon: Icon(Icons.edit),
          iconColor: Colors.pinkAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: Colors.pinkAccent,
              width: 10.0,
            ), 
          ),
        ),
      ),
    );
  }
}