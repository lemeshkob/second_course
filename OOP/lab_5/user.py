# -*- coding:UTF-8 -*-
import sqlite3
class User(object):
    def __init__(self, username='', usersurname=''):
        super(User,self).__init__()
        self._id = None
        self.name = username
        self.surname = usersurname
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