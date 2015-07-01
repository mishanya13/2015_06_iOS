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
    //finding which is larger is only for performance.
    var result = 0;
    for i in 0..<small{
        result += large;
    }
    return result;
}

//quotient(7,3)->2 quotient(3,7)->0
func quotient(x: Int, y: Int)->Int{
    if(y==0){
        return -1;//this is our way to say that there was an error.
        //we have to prevent an infinite loop.
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
    //product(quotient(x, y) is the highest multiplication of y that fits into x, for example, in the case of remainder(7,3), it is 6.
    return distance(x, product(quotient(x, y), y));
    //this is not very efficient because quotient(x,y) already finds the highest multiplication of y (the variable i holds it).
    //in the future, we'll learn how to return something the is more complexed than an int. We'd want to return both the quotient and the remainder from one method.
    
}






//power(3,3)->27 power(3,2)->9
//power(3,0)->1 power(0,0)->-1
/*
func power(x: Int, y: Int)->Int{
    if(x==0){
        if(y==0){
            return -1;//zero raised to the zero is an error
        }
        return 0;
    }
    if(y==0 || x==1){ //the x==1 here is just to improve preformance
        return 1;
    }
    
    var result = x;
    for i in 1..<y{ //runs y-1 times x*x*x*x*...
        result = product(result, x);
    }
    return result;
    
}
*/


func power(x: Int, y: Int)->Int{
    if(x==0){
        if(y==0){
            return -1;//zero raised to the zero is an error
        }
        return 0;
    }
    if(y==0 || x==1){ //the x==1 here is just to improve preformance
        return 1;
    }
    
    if(y==1){
        return x;
    }
    return product(power(x, distance(y, 1)), x);
}

//sumOfDigits(123)->6
func sumOfDigits(x: Int)->Int{
    var result = 0;
    var temp = x;
    while(temp != 0){
        let lastDigit = temp%10;
        temp /= 10;
        
        result += lastDigit;
    }
    return result;
}

func largestDigit(x: Int)->Int{
    var result = 0;
    var temp = x;
    while(temp != 0){
        let lastDigit = temp%10;
        temp /= 10;
        
        if(lastDigit>result){
            result = lastDigit;
        }
    }
    return result;
}

func reverseDigits(x: Int)->Int{
    var result = 0;
    var temp = x;
    while(temp != 0){
        let lastDigit = temp%10;
        temp /= 10;
        
        
        result = result*10 + lastDigit;
    }
    return result;
}

//var myNumbers = [1,3,7,2];
var myNumbers = [1,3,2,7];


func sortNumbers(var someNumbers: [Int])->[Int]{
    someNumbers[0] = 40;
    
    
    var limit = someNumbers.count - 1;
    var isSorted = false;
    while(!isSorted){
        isSorted = true;
        for var i=0; i < limit; i++ {
            if someNumbers[i] > someNumbers[i+1]{
                let temp = someNumbers[i];
                someNumbers[i] = someNumbers[i+1];
                someNumbers[i+1] = temp;
                isSorted = false;
            }
        }
        limit--;
    }
    
    return someNumbers;
}

sortNumbers(myNumbers);













