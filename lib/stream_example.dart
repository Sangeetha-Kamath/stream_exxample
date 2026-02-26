import 'package:flutter/material.dart';

class StreamExample extends StatelessWidget {
  const StreamExample({super.key});

  @override
  Widget build(BuildContext context) {
    Stream<int> incrementCount() async*{
      for(int i=0;i<=10;i++) {
        await Future.delayed(const Duration(seconds: 2));
      yield i;
      }
    }

   return Scaffold(
    appBar: AppBar(title:Text("Stream Example")),
    body:StreamBuilder<int>(stream: incrementCount(), builder: (context,snapshot){
if(snapshot.connectionState==ConnectionState.waiting){
  return Center(child: CircularProgressIndicator());
}else if(snapshot.connectionState == ConnectionState.active){
  return Center(child: Text(snapshot.data.toString()));
}else{
  return Center(child: Text("Something went wrong"));
}
    })
   );
  }
  
}