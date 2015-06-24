//
//  main.swift
//  Lesson03
//
//  Created by Elad Lavi on 6/24/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

//for loops

for i in 1...10{
        println("i = \(i)");
}

for i in 1..<10{
    println("i = \(i)");
}


//logical operators:
let x = true;
let y = false;


var a = x && y;
a = x || y;
a = !x;
a = !(x || y);
a = !x && !y;

//enum
enum State{
    case Inactive
    case Active
    case Hibernate
    case Terminated
}



var machineState:State = State.Hibernate;
var s123:String = "s123";
var s:String;
switch machineState {
    case State.Hibernate:
        s = "Hibernate";
    case .Active:
        s = "Active";
    case State.Inactive:
        s = "Inactive";
    case State.Terminated:
        s = "Terminated";
    default:
        s = "Unknown";
}
println("the machine state is \(s)");
enum Gender:Int{
    case Male = 1
    case Female
}
println("Female's value is \(Gender.Female.rawValue)");


//Arrays:
var a1:Array<String> = Array<String>();
var a2:[String] = [String]();
var a3 = ["A", "B", "C", 19];
a3.append(4);
a3.insert("D", atIndex: 2);
a3.removeAtIndex(0);
a3.removeLast();
//a3.removeAll(keepCapacity: true);
a3[1] = "G";
for val in a3{
    println(val);
}
for i in 0..<a3.count{
    println(a3[i]);
}

//B, G, C, 19


//Dictionary:

var d1:Dictionary<Int, String> = Dictionary<Int, String>();
var d2 = [10:"A",11:"B",12:"C"];
println(d2[12]!);

d2[100] = "D";
d2[100] = "E";

var englishToHebrew:Dictionary<String, String> = Dictionary<String, String>();
englishToHebrew["hello"] = "shalom";
englishToHebrew["dog"] = "כלב";
println(englishToHebrew["dog"]!);
englishToHebrew["cat"] = "חתול";
//englishToHebrew["cat"] = nil;
//englishToHebrew.removeValueForKey("dog");
//englishToHebrew["hello"] = nil;
//println(englishToHebrew.isEmpty);
for (tom,gerry) in englishToHebrew{
    println("key: \(tom), value: \(gerry)");
}
for key in englishToHebrew.keys{
    println("key: \(key)");
    
}


//more about loops:

for var i=0; i<=10; ++i{
    println("i=\(i)");
}
let names = ["Elad", "Bryan", "Liran"];

for name in names{
    println(name);
}


var i = 1;
while (i <= 10){
    println("i=\(i)");
    i++;
}

var number = 123;

if(number<200){
    println("number is less than 200");
}else if(number<300){
    println("number is less than 300");
}

var age:Int = 123;

if(age>=21){
    println("you're allowed to drink alcohol");
}else if(age>=18){
    println("allowed to drink with parents");
}else{
    println("not allwed to drink alcohol");
}


for i in 1...10{
    println("i=\(i)");
    if i==5{
        break;
    }
    
}

//functions

func myFunc()->String?{
    println("in myFunc()");
    return "hi";
}
let result = myFunc();
println(result!);


func averageScore(scores:[Float])->Float{
    var sum:Float = 0;
    var count:Float = 0;
    
    for score in scores{
        sum += score;
        count++;
    }
    return sum / count;
}

func printTwoThings(firstThing:String, secondThing:String){
    println("first: \(firstThing) second: \(secondThing)");
}

//distance  5,8->3  8,5->3
//product 5,8->40
//quotient 7,3->2    3,7->0
//remainder 7,3->1    3,7->3


