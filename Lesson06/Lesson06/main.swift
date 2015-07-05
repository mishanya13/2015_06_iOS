//
//  main.swift
//  Lesson06
//
//  Created by Elad Lavi on 7/5/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class Person{
    var name: String;
    var age: Int;
    private var _lastName:String;
    
    
    init(name:String, age:Int){
        self.name = name;
        if(age > 0){
            self.age = age;
        }else{
            self.age = 0;
        }
        self._lastName = "";
        //you cannot call methods from the initializer because the object doesn't exist yet.
    }
    
    init(){
        println("in init of Person");
        self.name = "Name";
        self.age = 0;
        self._lastName = "";
    }
    
    
    
    //computed property
    var lastName:String{
        get{
            return _lastName;
        }
        set{
            _lastName = newValue;
        }
    }
    
    func description()->String{
        return "My name is \(self.name) and I'm \(self.age) years old";
    }
    
    func doPersonThings(){
        println("\(self.name) is doing peron things");
    }
    
    deinit{
        println("in deinit of Person \(self.name)");
    }
    
    
    /*
    private var roles = ["Manager", "Parent", "Runner"];
    subscript(index: Int) ->String{
        get{
            return roles[index];
        }
        set{
            self.roles[index] = newValue;
        }
    }
    subscript(i:String) ->String{
        get{
            return "hello";
        }
        set{
            
        }
    }
    */
}





class Employee: Person {
    var employeeNumber = 1234567890;
    var hourlyRate = 12.00;
    
    override init(){
        super.init();
        println("in init of Employee");
        self.age = 18;//call to super.init() must be before this line because age belongs to Person.

    }
    
    
    override func description() -> String {
        return "My name is \(self.name) and I'm \(self.age) years old, and my hourly rate is $\(self.hourlyRate)";
    }
    
    override var lastName:String{
        get{
            return "Mr. \(_lastName)";
        }
        set{
            _lastName = newValue;
        }
    }
    
    func doEmployeeThings(){
        println("\(self.name) is doing employee things");
    }
    
}


//println(p["hi"]);
/*
var p1 = Person();
p1.name = "Matt";
p1.lastName = "Campbell";
p1.age = 40;
println(p1.description());
*/

var e1:Employee = Employee();
e1.name = "Jim";
e1.age = 18;
//e1.employeeNumber = 1;
//e1.hourlyRate = 15.50;
println(e1.description());

var p2:Person = Person(name: "Josh", age: 41);
p2 = e1;


var f1 = 9.99;
let i1 = Int(f1);
let d1 = Double(i1);
f1 += 12.0; //this will not change i1 and d1
let b1 = Bool(f1);
let s1 = toString(f1);
println(d1);
println(i1);
println(b1);
e1.doPersonThings();
e1.doEmployeeThings();
p2.doPersonThings();

class Dog{
    
}

var d = Dog();

println("looping through persons");
let persons:[AnyObject] = [e1,p2,d];
for p in persons{
    //downcasting from AnyObject to Person
    let pAsPerson = p as? Person;
    //conditional unwrap
    if let thePerson = pAsPerson{
        thePerson.doPersonThings();
    }
    
    
}





