
class Courses{
  String? courseName,courseCode;
  List<String>? schedule;


  Courses({
     this.courseCode,
     this.courseName,
     this.schedule,

  });

  factory Courses.fromJson(Map<String,dynamic> json){
      
    return Courses(
      courseCode: json['courseCode'], 
      courseName: json['courseName'], 
      schedule: json['schedule']
      );
  }

  Map<String,dynamic> toJson(){
    return{
      "courseName": courseName,
      "courseCode": courseCode,
      "schedule": schedule
    };
  }
}