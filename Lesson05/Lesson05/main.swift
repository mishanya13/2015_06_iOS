//
//  main.swift
//  Lesson05
//
//  Created by Elad Lavi on 7/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

//Closures

var abc = ["D", "E", "A", "C", "B"];

let abcSorted = sorted(abc, { (s1:String, s2: String) -> Bool in
    return s1 < s2;
})

//println(abcSorted);

func distance(x: Int, y: Int)->Int{
    var small = x;
    var large = y;
    if(x > y){
        small = y;
        large = x;
    }
    var result = 0;
    while(small + result < large){
        result++;
    }
    return result;
}


let distanceClosure = {(x: Int, y: Int)->Int in
    var small = x;
    var large = y;
    if(x > y){
        small = y;
        large = x;
    }
    var result = 0;
    while(small + result < large){
        result++;
    }
    return result;
};

let d = distanceClosure(5,8);
//println(d);


//Structures:

struct Rectangle {
    var x:Int = 0;
    var y:Int = 0;
    var width:Int = 0;
    var height:Int = 0;
    
    func description() ->String{
        return "x: \(x), y: \(y), width: \(width), height:\(height)";
    }
}


var rect = Rectangle();

rect.x = 10;
rect.y = 10;
rect.width = 100;
rect.height = 50;
//println(rect.description());


var rect2 = rect;
rect2.x = 19;

//println(rect2.description());

class Person {
    lazy var name: String = "Name";
    private var _age:Int = 0;
    private var _lastName:String = "";
    
    //observers
    var email:String = ""{
        willSet{
            println("\(name)'s email is about to be changed")
        }
        didSet{
            println("\(name)'s email was changed")
        }
    };
    
    private var gender:Int = 2;
    
    func setGender(gen:Int){
        println("gender is about to be changed");
        if(gen<2){
            gender = gen;
        }
        println("gender was changed");
    }
    
    var lastName:String{
        get{
            return _lastName;
        }
        set{
            _lastName = newValue;
            
        }
    }
    
    var age:Int{
        get{
            return _age;
        }
        set{
            if(newValue>=0){
                _age = newValue;
            }
        }
    }
    
    
    
    
    func description()->String{
        return "My name is \(self.name), I'm \(self._age) years old";
    }
}

var p = Person();
p.name = "Barak";
p.age = -3;
p.lastName = "Lavi";
//println(p.description());


var p2 = p;
p2.name = "Shoshi";
println(p.description());

//struct is a value type. class is a reference type.
//in assignment, value types are copied, as apose to reference types which only the pointer is copied.
if (p === p2){
    println("p and p2 points to the same address in memory");
}

p.email = "barak@barak.com";

