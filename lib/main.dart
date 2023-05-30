import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: xylophone(),));
}
class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text('xylophone')),
      backgroundColor: Colors.cyan,
    ),
      body: Column(
        children: [
          containers(color:Colors.pink ,sound:1 ,),
          containers(color: Colors.yellow, sound: 2,),
          containers(color: Colors.green, sound: 4,),
          containers(color: Colors.purple, sound: 5,),
          containers(color: Colors.blue , sound: 6,),
          containers(color: Colors.blueGrey, sound: 7,),
        ],
      ),
    );
  }
}

class containers extends StatelessWidget {
  Color? color;
  int? sound;
  containers({super.key,required this.color,required this.sound});
  void plyaSound(int soundNumber){
    final player= ();
    player.play('assets_note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: color,
        child: TextButton(onPressed:(){},child: Center(child: Text('audio')))));
  }
}
