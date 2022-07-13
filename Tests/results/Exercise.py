class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def talk(self):
        print(f"hello, my name is {self.name}")

class Worker(Person):
    def __init__(self, name, age, job_title, salary):
        Person.__init__(self, name, age)
        self.job_title = job_title
        self.salary = salary

    def talk(self):
        Person.talk(self)
        print(f"and my job is {self.job_title}")

    def get_salary(self):
        print(f"My salary is {self.salary}")
class Student(Person):
    def __init__(self, name, age, grade):
        Person.__init__(self, name, age)
        Person.grade = grade

    def talk(self):
        Person.talk(self)
        print(f"and my grade is {self.grade}")
jefferson = Worker("Jefferson", 25, "developer", 10000)
# jefferson.talk()
# jefferson.get_salary()
alex_student = Student("Alex", 55, 99)
#alex_student.talk()
bad_student = Student("Crazy", 20, 35)
irina = Worker("Irina",33, "Teacher", 45555)
persons_list = [jefferson, irina, alex_student, bad_student]
for person in persons_list:
    person.talk()
