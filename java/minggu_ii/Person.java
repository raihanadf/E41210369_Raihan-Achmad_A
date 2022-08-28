package Minggu_2;

public class Person {

  private String fName, lName;
  private int stuId, age;
  private boolean stuStatus;

  public Person(String fName, int age) {
    this.fName = fName;
    this.age = age;
  }

  public Person(String fName, String lName, int stuId, boolean stuStatus) {
    this.fName = fName;
    this.lName = lName;
    this.stuId = stuId;
    this.stuStatus = stuStatus;
  }

  public String getFullName() {
    return this.fName + " " + this.lName;
  }

  public String getName() {
    return this.fName;
  }

  public String getActive() {
    if (this.stuStatus) {
      return "Active";
    } else {
      return "Not Active";
    }
  }

  public int getAge() {
    return this.age;
  }

  public static void main(String[] args) {

    Person person = new Person("Lisa", "Palombo", 123456789, true);

    System.out.println("Student Name: " + person.getFullName());
    System.out.println("Student ID: " + person.stuId);
    System.out.println("Student Status: " + person.getActive());

  }

}
