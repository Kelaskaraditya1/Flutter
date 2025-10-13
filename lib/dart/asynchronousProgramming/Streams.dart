/*
* Stream: Continues flow of data.
*
* the function which will return the data, we have to use async* which denotes Streams and for returning the value we have to use yield.
*
* Stream<type> name async*(){
*
*   await task();
*   implementation....
*   yield value;
* }
*
*   while using the function we have to use "listen((){})" instead of "then((){})"
*
* */
Stream<int> getData() async*{
  
  for(int i=0;i<10;i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
  
}

Future<void> fetchData() async{
  
  await getData().listen((value){
    print("i= $value");
  });
  
}

void main(){
  fetchData();
}