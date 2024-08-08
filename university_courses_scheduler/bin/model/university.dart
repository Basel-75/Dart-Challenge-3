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
}