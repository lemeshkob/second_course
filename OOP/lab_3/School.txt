""" PLS DON`T TOUCH
def get_instance_variables(obj):
    temp_scope = globals()
    temp_scope.update(locals())
    everything = {x: eval("obj.{}".format(x), temp_scope) for x in dir(obj)}
    is_var = lambda x: x and not (x.startswith('__') and x.endswith('__'))
    callable_first = (lambda y: y[0] if not callable(y[1]) else None)
    return filter(is_var, map(callable_first, everything.items()))
"""


class Worker:

    workers_count = 0

    def __init__(self, name, age):
        self.worker_name = name
        self.worker_age = age
        Worker.workers_count += 1

    def print_info(self):
        print("It's just a worker. His name is {} and his age is {}".format(self.worker_name, self.worker_age))

    def say_hello(self):
        print("Hello! It's {}".format(self.worker_name))


class CourtWorker(Worker):

    def __str__(self):
        return "It's a court worker. His name is {} and his age is {}".format(self.worker_name, self.worker_age)

    def print_info(self):
        print(self)

    def contact_loyer(self):
        pass


class AppleStoreWorker(Worker):

    def print_info(self):
        print("It's an Apple Store worker. His name is {} and his age is {}".format(self.worker_name, self.worker_age))

    def sell_phone(self):
        pass

    def sell_computer(self):
        pass