class GlobalFile{
  String name;
  double balance;
  GlobalFile(String name1, double balance1)
  {
    name = name1;
    balance = balance1;
  }

  void updatebalance(double balance1){
    balance = balance1;
  }
}