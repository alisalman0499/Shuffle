import java.util.ArrayList;
import java.util.Random;

class ArrayShuffler{
  String[] names;
  String[] newNames;
  
  ArrayShuffler(String[] tempNames){
    this.names = tempNames;
  }
  
  String[] shuffle(){
    newNames = new String[names.length];
    ArrayList<Integer> integers = new ArrayList<>();
    for (int i = 0; i < names.length; i++){
      integers.add(i);
    }
    for (int i = 0; i < names.length; i++){
      int randomNumber = (int) random(integers.size());
      println(integers.get(randomNumber));
      newNames[integers.get(randomNumber)] = names[i];
      integers.remove(randomNumber);
      println(newNames);
     }
    return newNames;
  }
}
