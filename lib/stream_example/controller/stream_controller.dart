import 'dart:async';

import 'package:get/get.dart';

class StreamDataController extends GetxController {
   final StreamController<int> _controller = StreamController<int>();

  int _i=0;
  Timer? _timer;
  Stream<int> get stream=>
     _controller.stream;
  
  @override
  void onInit() {
    // TODO: implement onInit
    
    incrementCount();
    super.onInit();
  }
 
void  incrementCount(){
 
   _timer=Timer.periodic(const Duration(seconds: 2),(t){
    if(_i<10){
 _controller.add(_i);
 _i++;
    }else{
_controller.close();
t.cancel();

    }
  });
   
  
  

}
@override
  void dispose() {
    // TODO: implement dispose
   
    _controller.close();
    _timer?.cancel();
     super.dispose();

  }

  
}