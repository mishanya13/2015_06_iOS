//
//  main.swift
//  Lesson02
//
//  Created by Elad Lavi on 6/21/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

println("Hello, World!")

//Tuples

let rectangle1 = (0, 0, 200, 100);

var rectangle2 = (x: 0, y: 0, width: 200, height: 100);

println("rectangle1: \(rectangle1)");
println("rectangle2 width: \(rectangle2.width)");
let w2 = rectangle2.width;
rectangle2.width = 19;
println(rectangle2.width);
/*
let x = rectangle1.0;
let y = rectangle1.1;
let width = rectangle1.2;
let height = rectangle1.3;
*/
//let (x, y, width, height) = rectangle1;
let (x, _, width, _) = rectangle1;


//Optionals

var s:String?; //s is optional, meaning it is allowed to be nil.
s = "ABC";
println("the value of s is \(s!)"); //the ! is used to unwrap the value
/*
if s != nil{
    println(s!);

}
*/ //is the same as:
//conditional unwrap:
if let sValue = s{
    println(sValue);
    println(sValue);
}

//type alias:
typealias Note = String;
var myNote:Note = "this is my note";

//scope:
var myString = "hi";
let isTrue = true;
if(isTrue){
    var myString = "This is my string";
    println(myString);
    
}
println(myString);
//to the scope in the if statement.

//operators shortcuts
var i=0;

i = i + 4;
i += 4;
i -= 4;
i *= 2;
i /= 2;

i = (1 + 2) * 3;
i = 1 + 2 + 3;

i = 12 / 5;
println("the value of i is : \(i)");

let f = 12.0 / 5.0;
println("the value of f is : \(f)");
//eladlavi1@gmail.com

let modulu = 12 % 5;

i++;
++i;



var y = 8;

var myBool:Bool;
myBool = x == y;

myBool = x != y;

myBool = x > y;
/*
if x>5 {
    y = 19;
}else{
    y = 15;
}
*/
y = x>5 ? 19 : (x%2 == 0 ? 15 : 13);

for i in 1...10{
    println("i = \(i)");
}










