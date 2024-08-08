
import '../data.dart';
import 'model/courses.dart';
import 'model/university.dart';


void main(List<String> arguments) {
  
Courses x = Courses.fromJson(Data.data);
Univercity x1 = Univercity.fromJson(Data.data);

List a = [];


print(x.toJson());
//print(x1.courses);
}
