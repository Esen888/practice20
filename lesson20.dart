import 'dart:io';

void main() {
  USD usd = USD(price: 87);
  EUR eur = EUR(price: 110);
  RUB rub = RUB(price: 0.9);
  KZT kzt = KZT(price: 0.212321);
  Exchenger first = Exchenger();
  first.exchange(eur: eur,kzt: kzt,rub: rub,usd: usd);
}

abstract class Money {
  double price;
  Money({required this.price});
  double sell(int amount) {
    return amount * price;
  }

  double buy(int amount) {
    return amount / price;
  }
}

class USD extends Money {
  USD({required super.price});
}

class EUR extends Money {
  EUR({required super.price});
}

class RUB extends Money {
  RUB({required super.price});
}

class KZT extends Money {
  KZT({required super.price});
}

class Exchenger {
  exchange({required USD usd,required  EUR eur,required  KZT kzt,required RUB rub}) {
    print("1) Хотите обменять другую валюту на сом? 2) Хотите обменять сом на другую валюту?");
    int ans = int.parse(stdin.readLineSync()!);
    if (ans == 1) {
      print("Выберите валюту: USD EUR RUB KZT");
      String val = stdin.readLineSync()!;
      if (val == "USD") {
        print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =usd.sell(dlr);
        print("$dlr USD= $value SOM");
      } 
      else if (val == "EUR") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =eur.sell(dlr);
        print("$dlr EUR= $value SOM");
      }
      else if (val == "RUB") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =rub.sell(dlr);
        print("$dlr RUB= $value SOM");
      }
     else if (val == "KZT") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =kzt.sell(dlr);
        print("$dlr KZT= $value SOM");
      }
      else {
        print("Не корректный ввод");
      }
      
    } 
    if(ans == 2) {
     print("Выберите валюту: USD EUR RUB KZT");
      String val = stdin.readLineSync()!;
      if (val == "USD") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =usd.buy(dlr);
        print("$dlr SOM= $value USD");
      } 
      else if (val == "EUR") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =eur.buy(dlr);
        print("$dlr SOM= $value EURO");
      } 
      else if (val == "RUB") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =rub.buy(dlr);
        print("$dlr SOM= $value RUB");
      } 
      else if (val == "KZT") {
         print("ВВедите сумму");
        int dlr = int.parse(stdin.readLineSync()!);
        double value =kzt.buy(dlr);
        print("$dlr SOM= $value KZT");
      } 
      else {
        print("Не корректный ввод");
      }
  }
}
}


