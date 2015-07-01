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
println(d);




