//
//  main.swift
//  LearningFunction
//
//  Created by Elad Lavi on 6/28/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

//Lesson 04

import Foundation

//distance(5,8)->3, distance(8,5)->3
func distance(x: Int, y:Int) ->Int{
    var small = x;
    var large = y;
    if(x>y){
        small = y;
        large = x;
    }
    var result = 0;
    while (small + result < large){
        result++;
    }
    return result;
}


//product(4,3)->12
func product(x: Int, y: Int)->Int{
    var small = x;
    var large = y;
    if(x>y){
        small = y;
        large = x;
    }
    var result = 0;
    for i in 0..<small{
        result += large;
    }
    return result;
}

//quotient(7,3)->2 quotient(3,7)->0
func quotient(x: Int, y: Int)->Int{
    if(y==0){
        return -1;
    }
    var result = 0;
    
    for var i=y; i<=x; i+=y{
        result++;
    }
    return result;
}

//remainder(7,3)->1 remainder(3,7)->3
func remainder(x: Int, y: Int)->Int{
    if(y==0){
        return -1;
    }
    
    return distance(x, product(quotient(x, y), y));
    
}






//power(3,3)->27 power(3,2)->9
//power(3,0)->1 power(0,0)->-1
func power(x: Int, y: Int)->Int{
    
}




println("quotient: \(quotient(0,6))");















