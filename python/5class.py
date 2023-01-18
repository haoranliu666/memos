###define a class, its artributes, and its methods
class Account:
    def __init__(self, owner, balance):
        self.owner = owner
        self.balance = balance
    def __repr__(self):
        return f'{type(self).__name__}({self.owner!r}, {self.balance!r})'
    def deposit(self, amount):
        self.balance += amount
    def withdraw(self, amount):
        self.deposit(-amount)
    def inquiry(self):
        return self.balance

#create an instance
a = Account('Haoran', 1000.0)

#get, set, delete an artribute
a.balance
a.balance = 100
del a.balance


###create a class based on a class
class AccountPortfolio:
    def __init__(self):
        self.accounts = []
    def add_account(self, account):
        self.accounts.append(account)
    def total_funds(self):
        return sum(account.inquiry() for account in self.accounts)
    def __len__(self):
        return len(self.accounts)
    def __getitem__(self, index):
        return self.accounts[index]
    def __iter__(self):
        return iter(self.accounts)

port = AccountPortfolio()
port.add_account(Account('Guido', 1000.0))
port.add_account(Account('Eva', 50.0))
port.total_funds()
len(port)
port[0]
for account in port:
    print(account)


###inheritance
import random

class MyAcount(Account): 
    def __init__(self, owner, balance, factor):
        super().__init__(owner, balance)
        self.factor = factor
    def panic(self):
        self.withdraw(self.balance)
    def inquiry(self):
        if random.randint(0,1) == 1:
            return self.factor * super().inquiry()
        else:
            return super().inquiry()

a = MyAcount('Guido', 1000.0, 1.10)
a.withdraw(100)
a.inquiry()
a.panic()


#Class variables
#@classmethod
#cls
#@staticmethod
#@property

