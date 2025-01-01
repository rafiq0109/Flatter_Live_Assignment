abstract class Role{
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole(){

  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(this.studentID,this.grade,this.courseScores): super("John Doe",20,"123 Main St");

  @override
  void displayRole(){
    print("Role: Student");
  }

  double calculateAverageScores(){
    if(courseScores.isEmpty) return 0.0;
    int total = courseScores.reduce((a,b)=>a+b);
    return total/courseScores.length;

  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(this.teacherID,this.coursesTaught):super("Mrs. Smith",35,"456 Oak St");

  @override
  void displayRole(){
    print("Role: Teacher");
  }

  void displayCourses(){
    print("Courses Taught:");
    for(var course in coursesTaught){
      print("- $course");
    }
  }
}
// This is Test
void main(){
  Student student = Student('S123456', 'A',[90,85,82]);
  Teacher teacher = Teacher('T456789', ['Math','English','Bangla']);

  print("Student Information: \n");
  student.displayRole();
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Address: ${student.address}");
  print("Average Scores: ${student.calculateAverageScores()}");
  print("\n");

  print("Teacher Information: ");
  teacher.displayRole();
  print("Name: ${teacher.name}");
  print("Age: ${teacher.age}");
  print("Address: ${teacher.address}");
  teacher.displayCourses();

}