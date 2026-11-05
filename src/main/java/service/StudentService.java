package service;


import dao.StudentRepository;
import entity.Student;

import java.util.List;

public class StudentService {
    private StudentRepository studentRepository=new StudentRepository();
    public void addStudent(Student s){
        studentRepository.addStudent(s);
    }

    public void updateStudent(Student s){
        studentRepository.updateStudent(s);
    }

    public void deleteStudent(int id){
        studentRepository.deleteStudent(id);
    }

    public Student getStudent(int id){
        return studentRepository.getStudentById(id);
    }

    public List<Student> getAllStudents(){
        return studentRepository.getAllStudents();
    }

}