class Person {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    init?(age: Int) {
        guard age >= 16 else {
            return nil
        }
        self.name = "Undefined"
        self.age = age
    }
}

class Student: Person {
    let studentID: String
    let major: String
    
    required init(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
    }
    convenience init(name: String, age: Int, studentID: String) {
        self.init(name: name, age: age, studentID: studentID, major: "")
    }
}
class Professor: Person {
    let faculty: String
   
    init(name: String, age: Int, faculty: String) {
        self.faculty = faculty
        super.init(name: name, age: age)
    }
}
struct University {
    let name: String
    let location: String
}
