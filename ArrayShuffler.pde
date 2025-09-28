import java.util.ArrayList;
import java.util.Random;

class ArrayShuffler{
  String[] names;
  String[] newNames;
  
  ArrayShuffler(String[] tempNames){
    this.names = tempNames;
  }
  
  String[] shuffle(){
    //Initialize the array so you dont get nullpointer exceptions
    newNames = new String[names.length];
    //Create an arraylist for integers that we can remove from
    ArrayList<Integer> integers = new ArrayList<>();
    //Run a loop to add integers
    for (int i = 0; i < names.length; i++){
      integers.add(i);
    }
    //Shuffle algorithm
    //Runs through the list of the original names
    for (int i = 0; i < names.length; i++){
      //Create a random number between 0 and the size of the ArrayList
      int randomNumber = (int) random(integers.size());
      // Based on the numbers left in the ArrayList
      // get the value on a random location in the list of numbers
      // go to the index on the new list and set it equal to the next number
      // in the names list
      newNames[integers.get(randomNumber)] = names[i];
      // Remove the number we just worked with so it doesnt repeat
      integers.remove(randomNumber);
     }
    return newNames;
  }
}
