import sqlite3
db_name = 'db.sqlite3'
table_DML = 'CREATE TABLE users (id INTEGER PRIMARY KEY, ' \
            'name TEXT, surname TEXT);'
def createDB():
    connection = sqlite3.connect(db_name)
    connection.execute(table_DML)
    connection.commit()
    connection.close()
if __name__ == '__main__':
    createDB()
