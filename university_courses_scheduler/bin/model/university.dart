import '../../data.dart';
import 'courses.dart';

class Univercity{
  Courses? courses;

  Univercity({
    this.courses
  });

  factory Univercity.fromJson(Map<String,dynamic> json){
    return Univercity(
      courses: Courses.fromJson(json)
    );

    
  }
  Map<String,dynamic> toJson(){
    return {
      'courses' : courses
    };
  }


  addCourse(Courses course){
   Data.data.addAll({'':course});
  }

  removeCourseByCode(String courseCode){
    Data.data.removeWhere((key, value) => value==courseCode);
  }
  listAllCourses(){
    Courses.fromJson(Data.data).toJson();
  }
  searchCourses(String query){
    Data.data.forEach((key, value) { print(key.contains(query));});
  }
}