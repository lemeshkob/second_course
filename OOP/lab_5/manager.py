from user import User
class Manager(object):
    def __init__(self):
        super(Manager, self).__init__()
        self._users = []
    @property
    def users(self):
        return self._users
    @users.setter
    def users(self, value):
        self._users = value
    @users.deleter
    def users(self):
        del self._users
