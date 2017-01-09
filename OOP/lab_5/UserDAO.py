from user import User
import sqlite3
class UserDAO(object):
    _dbname = 'db.sqlite3'
    def __init__(self):
        super(UserDAO, self).__init__()
    def getAll(self):
        users = []
        query = 'SELECT id, name, surname ' \
                'FROM users'
        connection = sqlite3.connect(self._dbname)
        result = connection.execute(query).fetchall()
        for user_data in result:
            new_user = User()
            new_user._id = str(user_data[0])
            new_user.name = str(user_data[1])
            new_user.surname = str(user_data[2])
            users.append(new_user)
        connection.close()
        return users
    def getUser(self, paramDict):
        res_user = User()
        query = 'SELECT id, name, surname ' \
                'FROM users ' \
                'WHERE '
        equal_substr = '{attr_name} = "{attr_value}"'
        counter = len(paramDict)
        for param in paramDict:
            query += equal_substr.format(attr_name=param,
                                         attr_value=paramDict[param])
            if counter == 1:
                query += ';'
            else:
                query += ' AND '
            counter -= 1
        connection = sqlite3.connect(self._dbname)
        result = connection.execute(query).fetchone()
        connection.close()
        res_user._id = result[0]
        res_user._name = str(result[1])
        res_user._surname = str(result[2])
        return res_user
    def save(self, user):
        if user._id is None:
            query = 'INSERT INTO users ' \
                    '(name, surname) ' \
                    'VALUES ' \
                    '("{name}", "{surname}");'
            filled_query = query.format(name=user.name, surname=user.surname)
            connection = sqlite3.connect(self._dbname)
            result = connection.execute(filled_query)
            connection.commit()
            connection.close()
        else:
            self._update(user)
    def _update(self, user):
        query = 'UPDATE users ' \
                'SET ' \
                'name = "{name}", ' \
                'surname = "{surname}" ' \
                'WHERE id = {id};'
        filled_query = query.format(id=user._id, name=user.name,
                                    surname=user.surname)
        connection = sqlite3.connect(self._dbname)
        connection.execute(filled_query)
        connection.commit()
        connection.close()
    def delete(self, user):
        query = 'DELETE FROM users ' \
                'WHERE id = "{id}";'
        filled_query = query.format(id = user._id)
        connection = sqlite3.connect(self._dbname)
        connection.execute(filled_query)
        connection.commit()
        return