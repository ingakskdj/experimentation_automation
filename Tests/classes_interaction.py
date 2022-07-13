class Bar():
    def __init__(self, name, capacity):
        self.name = name
        self.capacity = capacity
        self.drinks = {}
        self.cash = 0
        self.visitors = []

    def add_visitors(self):
        guest_name = input("please enter your name: ")
        self.visitors.append(guest_name)

    def menu(self):
        print("We have these drinks today: ")
        for drinks in self.drinks.keys():
            if self.drinks[drink_name].count > 0:
                print(drink_name)

    def add_drink(self, beverage):
        self.drinks[beverage.get_name()] = beverage

    def sell_beverage(self, beverage_name):
        if beverage_name in self.drinks:
            price = self.drinks[beverage_name].get_price()
            print("We have " + beverage_name + "it will cost" + price)
            if self.drinks[beverage_name].can_be_sold():
                self.drinks[beverage_name].sell()
                self.cash += price
                tips = int(input("How much tips would you like to leave "))
                self.cash += tips

            else:
                print("Sorry, this drink is sold out")



class Beverage():
    def __init__(self, name, price, count):
        self.name = name
        self.price = price
        self.count = count
    def get_price(self):
        return self.price

    def get_name(self):
        return self.name

    def sell(self):
        self.count -= 1

    def can_be_sold(self):
        return self.count > 0


my_bar = Bar("Fate", 30)
red_wine = Beverage("red wine", 6, 20)
my_bar.add_drink(red_wine)
dark_beer = Beverage("dark beer", 5, 50)
my_bar.add_drink(dark_beer)
print(my_bar.drinks)
my_bar.add_visitors()
my_bar.menu()
my_bar.sell_beverage("Red wine")
print(my_bar.visitors)
print(my_bar_cash)

#create new parameter - cash and calculate separately
#show menu
