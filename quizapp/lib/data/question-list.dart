import 'package:quizapp/model/model-question.dart';

List<questionsmodel> questions = [
  questionsmodel("1. What is the purpose of the 'sizeof' operator in C?", {
    "a) To calculate the size of a data type": true,
    "b) To compare two values": false,
    "c) To allocate memory": false,
    "d) To increment a variable": false,
  }),
  questionsmodel("2. Which of the following is the correct way to declare a pointer variable in C?", {
    "a) int *ptr;": true,
    "b) *int ptr;": false,
    "c) pointer int *ptr;": false,
    "d) ptr int *;": false,
  }),
  questionsmodel("3. What is the role of the 'main' function in a C program?", {
    "a) It defines global variables": false,
    "b) It executes the program's logic": true,
    "c) It deallocates memory": false,
    "d) It prints debug information": false,
  }),
  questionsmodel("4. In C, what does the 'fgets' function do?", {
    "a) Performs mathematical calculations": false,
    "b) Reads a line from a file": true,
    "c) Prints output to the console": false,
    "d) Clears the screen": false,
  }),
  questionsmodel("5. Which of the following loops is guaranteed to execute at least once in C?", {
    "a) for loop": false,
    "b) while loop": false,
    "c) do-while loop": true,
    "d) until loop": false,
  }),
  questionsmodel("6. What is the output of the following Python code snippet?\n\nnumbers = [1, 2, 3, 4, 5]\nresult = sum(numbers)\nprint(result)", {
    "a) 15": true,
    "b) [1, 2, 3, 4, 5]": false,
    "c) 10": false,
    "d) Error": false,
  }),
  questionsmodel("7. In Python, which of the following is used to create a function?", {
    "a) func": false,
    "b) create": false,
    "c) def": true,
    "d) function": false,
  }),
  questionsmodel("8. What is the purpose of the 'len' function in Python?", {
    "a) To calculate the logarithm of a number": false,
    "b) To find the length of a sequence or collection": true,
    "c) To generate random numbers": false,
    "d) To round a floating-point number": false,
  }),
  questionsmodel("9. How do you open a file named 'ata.txt' in Python for writing?", {
    'a) file = open("data.txt", "r")': false,
    'b) file = open("data.txt", "w")': true,
    'c) file = open("data.txt", "a")': false,
    'd) file = open("data.txt", "x")': false,
  }),
  questionsmodel("10. What is the purpose of the 'import' statement in Python?", {
    "a) To export variables from a module": false,
    "b) To include external files in the code": false,
    "c) To create a new module": false,
    "d) Import modules to use in current program": true,
  }),
  questionsmodel("11. Which of the following is used to define the structure of a database, including tables, columns, and relationships?", {
    "a) SQL": true,
    "b) PHP": false,
    "c) HTML": false,
    "d) XML": false,
  }),
  questionsmodel("12. Which SQL command is used to add new records to a database table?", {
    "a) ADD": false,
    "b) UPDATE": false,
    "c) INSERT": true,
    "d) MODIFY": false,
  }),
  questionsmodel("13. What does 'ACID' stand for in the context of database transactions?", {
    "a) All Columns In Database": false,
    "b) Atomic, Consistent, Isolated, Durable": true,
    "c) Aggregate, Computed, Indexed, Dynamic": false,
    "d) Automated, Controlled, Ideal, Distributed": false,
  }),
  questionsmodel("14. Which type of join returns all records from both tables, joining where there is a match between columns, and fills in missing values with NULLs?", {
    "a) INNER JOIN": false,
    "b) LEFT JOIN": false,
    "c) RIGHT JOIN": false,
    "d) FULL OUTER JOIN": true,
  }),
  questionsmodel("15. What is the purpose of the 'SELECT' statement in SQL?", {
    "a) To update records in a table": false,
    "b) To insert new records into a table": false,
    "c) To retrieve data from a database": true,
    "d) To delete records from a table": false,
  }),
  questionsmodel("16. Which programming language is primarily used for Flutter app development?", {
    "a) Java": false,
    "b) Python": false,
    "c) Swift": false,
    "d) Dart": true,
  }),
  questionsmodel("17. Which file is used to define the user interface layout in Flutter?", {
    "a) .java": false,
    "b) .xml": false,
    "c) .dart": true,
    "d) .ui": false,
  }),
  questionsmodel("18. What does the 'ADB' stand for in Android development?", {
    "a) Android Debugger": false,
    "b) Application Development Bridge": true,
    "c) Advanced Device Bridge": false,
    "d) Android Development Bundle": false,
  }),
  questionsmodel("19. Which file contains metadata about the app, such as its permissions and components, in an Android project?", {
    "a) app.js": false,
    "b) main.xml": false,
    "c) AndroidManifest.xml": true,
    "d) layout.xml": false,
  }),
  questionsmodel("20.What is the process of testing an Android app on a virtual device or physical device called?", {
    "a) Simulation": false,
    "b) Emulation": true,
    "c) Testing": false,
    "d) Debugging": false,
  }),
];
