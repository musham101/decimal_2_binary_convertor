class Deci2Binary{
  int num;
  int binaryLength;
  List<String> arr = List<String>.filled(32, '');
  List<String> arr1 = List<String>.filled(32, '');
  Deci2Binary([this.num = 0, this.binaryLength = 0]);
  Deci2Binary.n(this.num, this.binaryLength);

  setNum(int num){
    this.num = num;
  }
  convert(){
    if(num < 0){
      arr1[0] = 'Make sure the number you enter is positive';
      binaryLength = 1;
      return; 
    }
    int i = 0;
      while (num > 0) {
        int temp = num % 2;
        arr[i] = temp.toString();
        num = num ~/ 2;
        i++;
      }
      int d = 0;
      for (int s = i - 1; s >= 0; s--) {
        arr1[d] = arr[s];
        d++;
      }
      binaryLength = d;
    }
}
