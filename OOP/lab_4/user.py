import person
import sqlite3
class User(person.Person):
    def __init__(self,id,name,surname):
      self.id = None
      self.name = name
      self.surname = surname
      self._dbname = 'db.sqlite3'
    @property
    def name(self):
        """ім'я користувача"""
        return self._name
    @name.setter
    def name(self, value):
        self._name = value
        return
    @name.deleter
    def name(self):
        del self._name
        return
    @property
    def surname(self):
        return self._surname
    @surname.setter
    def surname(self, value):
        self._surname = value
        return
    @surname.deleter
    def surname(self):
        del self._surname
        return
    def load(self, paramDict):
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
        self._id = result[2]
        self._name = str(result[1])
        self._surname = str(result[2])
        return
    def save(self):
        if self.id is None:
            query = 'INSERT INTO users ' \
                    '(name, surname) ' \
                    'VALUES ' \
                    '("{name}", "{surname}");'
            filled_query = query.format(name=self.name, surname=self.surname)
            connection = sqlite3.connect(self._dbname)
            result = connection.execute(filled_query)
            connection.commit()
            connection.close()
        else:
            self._update()
        return
    def _update(self):
        query = 'UPDATE users ' \
                'SET ' \
                'name = "{name}", ' \
                'surname = "{surname}" ' \
                'WHERE id = {id};'
        filled_query = query.format(id = self._id, name = self.name,
                                    surname = self.surname)
        connection = sqlite3.connect(self._dbname)
        connection.execute(filled_query)
        connection.commit()
        connection.close()
        return

    def delete(self):
        query = 'DELETE FROM users ' \
                'WHERE id = "{id}";'
        filled_query = query.format(id = self._id)
        connection = sqlite3.connect(self._dbname)
        connection.execute(filled_query)
        return
