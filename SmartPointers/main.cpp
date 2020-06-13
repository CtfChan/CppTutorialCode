#include <memory>
#include <string>
#include <iostream>
#include <exception>


class MyClass {
public:
    MyClass(std::string name) : name_(name) {
        if (name == "b")
            throw std::runtime_error("error");
    }

private:
    std::string name_;
  
};

class Person {
public:
    Person(std::string name) : name_(name) {}

    friend void partnerUp(std::shared_ptr<Person>& p1,std::shared_ptr<Person>& p2) {
        // check pointer validity
        // ... 

        p1->partner_ = p2;
        p2->partner_ = p1;
    }

private:
    std::string name_;
    std::weak_ptr<Person> partner_; 
};




void someFunction(std::shared_ptr<MyClass> ptr1, std::shared_ptr<MyClass> ptr2) {

}



int main() {
  
    // // std::unique_ptr call signatures
    // std::unique_ptr<Type> VariableName(new Type); // method 1
    // std::unique_ptr<Type> VariableName = std::make_unique<Type>(Parameters); // method 2
    
    // std::unique_ptr examples
    std::unique_ptr<int> int_ptr(new int);
    std::unique_ptr<MyClass> class_ptr = std::make_unique<MyClass>("john");
    // THIS IS NOT ALLOWED, copy assignment operator deleted for this class
    //std::unique_ptr<int> copy_class_ptr = class_ptr;


    ///////////////////////////////////////////////////////////


    // // std::shared_ptr call signatures
    // std::shared_ptr<Type> VariableName(new Type); // method 1
    // std::shared_ptr<Type> VariableName = std::make_shared<Type>(Parameters); // method 2
    
    // std::shared_ptr examples
    std::shared_ptr<int> int_ptr1(new int);
    auto int_ptr2 = int_ptr1;
    auto int_ptr3 = int_ptr2;
    std::shared_ptr<MyClass> shared_class_ptr1 = std::make_shared<MyClass>("doe");
    auto shared_class_ptr2 = shared_class_ptr1;


    ///////////////////////////////////////////////////////////

    // weak_ptr observe variable example
    std::shared_ptr<int> shared_ptr = std::make_shared<int>(100);
    std::weak_ptr<int> weak_ptr(shared_ptr);

    // create shared_ptr from weak_ptr using .lock() method
    // make sure underlying object still exists with .expired()
    if (weak_ptr.expired() == false) 
        auto created_shared_ptr = weak_ptr.lock();



    // weak_ptr cyclic reference example
    auto person1 = std::make_shared<Person>("Person1");
    auto person2 = std::make_shared<Person>("Person2");

    partnerUp(person1, person2);

  
    ///////////////////////////////////////////////////////////


    // exception safety with std::make_shared and std::make_unique
    try {
        // this is not exception safe !!!!
        someFunction(std::shared_ptr<MyClass>(new MyClass("a")) , std::shared_ptr<MyClass>(new MyClass("b")) );

        // this is exception safe
        someFunction(std::make_unique<MyClass>("a"), std::make_unique<MyClass>("b"));

    } catch (std::exception& e) {
        std::cout << "caught exception "  << std::endl;
    }
}


