import 'dart:async';

class StreamDataController {
   final StreamController<int> controller = StreamController<int>();
  Timer? timer;
  int i=0;
Stream<int> incrementCount()async*{
 
  timer=  Timer(const Duration(seconds: 2),(){
    if(i<10){
 controller.add(i);
 i++;
    }else{
controller.close();
timer?.cancel();

    }
  });
   
  
  

}

  
}