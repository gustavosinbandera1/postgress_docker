#include <iostream>
#include <vector>
#include <pqxx/pqxx>

class Person {
    public:
     Person(std::string name){
         pName_ = new std::string(name);
     }
     Person(const Person& rhs) {
         pName_ = new std::string(*(rhs.pName()));
     }
     ~Person(){
         std::cout << "deleting object" << std::endl;
         delete pName_;
     }
     Person& operator=(const Person& rhs); //deep copying 
     void printName() {std::cout << *pName();}
     std::string* pName() const {return pName_; }

    private:
     std::string* pName_;
};

int main () {
    std::vector<Person> persons;
    persons.push_back(Person("Gustavo"));
    persons.back().printName();
    std::cout << "\nGood bye!" << std::endl; 

   // std::cout << "SHELL = " << getenv("SHELL") << std::endl; 
    std::cout << "SHELL = " << getenv("DB_HOST") << std::endl; 

    pqxx::connection c("dbname=postgres user=postgres password=postgres hostaddr=192.168.1.66 port=5438");
    while(1){};
}


/*
g++ main.cpp -o main -pthread -std=c++11 -lpqxx  -lpq
*/