import 'dart:async';

import 'package:get/get.dart';

class StreamDataController extends GetxController {
   final StreamController<int> _controller = StreamController<int>();

  int _i=0;
  Stream<int> get stream{
    return _controller.stream;
  }
  StreamDataController(){
    incrementCount();
  }
void  incrementCount(){
 
   Timer.periodic(const Duration(seconds: 2),(t){
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
    super.dispose();
    _controller.close();
    
  }

  
}