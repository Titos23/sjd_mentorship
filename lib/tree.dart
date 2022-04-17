import 'dart:io';

File f = new File('E:\\StudioProjects\\parrainage\\assets');

PrintFile(String x, String y){
  f.writeAsString("Parrain: "+x+" filleul: "+y+".\n");
}