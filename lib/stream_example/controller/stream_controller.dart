import 'dart:async';

class StreamDataController {
   final StreamController<int> _controller = StreamController<int>();
  Timer? _timer;
  int _i=0;
  Stream<int> get stream{
    return _controller.stream;
  }
  StreamDataController(){
    incrementCount();
  }
void  incrementCount(){
 
  _timer=  Timer(const Duration(seconds: 2),(){
    if(_i<10){
 _controller.add(_i);
 _i++;
    }else{
_controller.close();
_timer?.cancel();

    }
  });
   
  
  

}

  
}