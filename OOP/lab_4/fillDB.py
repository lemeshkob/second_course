from user import User
names = ['Anatoliy','Andriy', 'Bogdan', 'Borys', 'Viktor',
         'Volodymyr', 'Gennady', 'Petro', 'Pavlo', 'John']
surnames = ['Ponchyk', 'Vatra', 'Syrota', 'Ivaniv', 'Ninja',
            'Lapochka', 'Kolobok', 'Vovk', 'Lys', 'Smith']
def fillDB(): 
        for i in range(0, len(names)): 
             current_user = User(i,names[i], surnames[i]) 
             current_user.save()
if __name__ == '__main__':
    fillDB()
