import java.util.ArrayList;
import java.util.Random;

class ArrayShuffler{
  String[] names = new String[10];
  String[] newNames;
  
  ArrayShuffler(String[] tempNames){
    this.names = tempNames;
  }
  
  String[] shuffle(){
    ArrayList<Integer> integers = new ArrayList<>();
    for (int i = 0; i < names.length; i++){
      integers.add(i);
      println(i);
      println(integers);
    }
    for (int i = 0; i < names.length; i++){
      int randomNumber = (int) random(integers.size());
      println(integers.size() + " " + randomNumber);
      //newNames[i] = names[randomNumber];
      integers.remove(randomNumber);
      println(integers.size() + " " + randomNumber);
     }
    return newNames;
  }
}
