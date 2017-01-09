import sqlite3 as db
import sqlite3


myDataBase = sqlite3.connect('myDB.db')

myCursor = myDataBase.cursor()
try:
    myCursor.execute('''CREATE TABLE Workers (id INT PRIMARY KEY, full_name TEXT,
    age INTEGER, gender TEXT, adress TEXT, phone_number INTEGER, passport_data TEXT, position_id INTEGER)''')
except db.OperationalError:
    pass

try:
    myCursor.execute('''CREATE TABLE Positions (position_id INTEGER PRIMARY KEY , position_name TEXT,
    salary INTEGER, tasks TEXT, requirements TEXT)''')
except db.OperationalError:
    pass

try:
    myCursor.execute('''CREATE TABLE Students (full_name TEXT, birth_date TEXT,
    gender TEXT, adress TEXT, father_full_name TEXT, mother_full_name TEXT, class_id INTEGER, additional_info TEXT)''')
except db.OperationalError:
    pass

try:
    myCursor.execute('''CREATE TABLE Classes (class_id INTEGER PRIMARY KEY, main_teacher_id INTEGER,
    id_type TEXT, students_count INT, class_letter TEXT, study_year INTEGER, create_year INTEGER)''')
except db.OperationalError:
    pass

try:
    myCursor.execute('''CREATE TABLE Classes_types (class_type_id INTEGER PRIMARY KEY, class_type_name TEXT,
    info TEXT)''')
except db.OperationalError:
    pass





myCursor.close()
myDataBase.close()