from abc import ABCMeta, abstractmethod, abstractproperty
class Person:
    __metaclass__ = ABCMeta
    @abstractproperty
    def name(self):
        """ім'я"""
    @abstractproperty
    def surname(self):
        """прізвище"""
    @abstractmethod
    def load(self):
        """вибрати об'єкти з БД"""
    @abstractmethod
    def save(self):
        """зберегти або оновити об'єкт в БД"""
    @abstractmethod
    def _update(self):
        """оновити запис"""
    @abstractmethod
    def delete(self):
        """видалити записи про об'єкт з БД"""
