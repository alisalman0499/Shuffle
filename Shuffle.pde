import java.util.ArrayList;

String[] names;
String[] newNames;

void setup(){
  String[] names = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"};
  ArrayShuffler shuffle1 = new ArrayShuffler(names);
  newNames = shuffle1.shuffle();
  
}
