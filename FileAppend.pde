import java.io.FileWriter;
 
FileWriter output = null;
try {
  output = new FileWriter("example.txt", true); //the true will append the new data
  output.write("a;b;c;this;that\n");
}
catch (IOException e) {
  println("It Broke");
  e.printStackTrace();
}
finally {
  if (output != null) {
    try {
      output.close();
    } catch (IOException e) {
      println("Error while closing the writer");
    }
  }
}
exit();
