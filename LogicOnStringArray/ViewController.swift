//
//  ViewController.swift
//  LogicOnStringArray
//
//  Created by Jamal Ahamad on 22/01/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //printEvenNumber()
        //printPrimeNumber()
        //printFibonacciSeries()
        //printFactorial()
        //reverseNumber()
        //countLatterInString()
        //countVowelfromStr()
        //print(checkPalindrome(string: "abcdefgfedcba"))
        print(reverseString(str: "asdfghjkl"))
    }
    // MARK:- LOGIC ON NUMBER
    
    func printEvenNumber(){
        
        for i in 0...20{
            
            if i != 0{
                
                if i % 2 == 0 {
                    
                    print(i)
                }
            }
            
        }
    }
    
    func printPrimeNumber(){
        
        let numberArray = [2,4,8,3,9,10,7]
       
        for i in numberArray {
            
            for j in 2...i {
             
                if i % j == 0{
                    
                    if i == j{
                        
                        print("its prime Number : \(i)")

                    } else {
                        
                    print("its not prime Number : \(i)")
                    break
                    }
                }
            }
      }
    }

    func printFibonacciSeries(){
        
        var first = 1
        var last = 0
        var result = 0
        for _ in 0...10 {
            
            print(result)
            last = first
            first = result
            result = first + last

        }
    }
    
    func printFactorial(){
        var factorial = 1
        for i in 1...5{
           
            factorial = factorial*i
        }
        print(factorial)

    
    }
    
    func reverseNumber(){
        
        var number = 467
        var rev = 0
        var rem = 0
        while number != 0 {
            
            rem = number % 10
            rev = rev * 10 + rem
            number = number/10
        }
        print(rev)
    }

    // MARK:- LOGIC ON STRING !!!!!

    func countLatterInString(){
        
        let string = "count latter in string bangalore"
        var count = 0
        for i in string.indices{
          let char1 = string[i]
            for letter in string.indices{
                
                let char2 = string[letter]
                
                if char1 == char2{
                    
                    count += 1
                    
                }
            }
            print("count of letter :\(char1) is :\(count)")
            count = 0
        }
        
    }
    func countVowelfromStr(){
        
        var str = "count vowel from given string"
        var count = 0
        for index in str {
            
            switch index {
            case "a","e","i","o","u" :
                count += 1
                str.remove(at: str.index(of: index)!)
            default:
                print("consonent \(index)")
            }
            
        }
        print("total vowel :\(count)")
        print("string : \(str)")
    }

    func reverseString(str:String)->String{
        var string = str
        var i = 0, j = string.count-1
        while i < j {
           // string.swapAt(i, j)
            let index1 = string.index(string.startIndex, offsetBy: i)
            let index2 = string.index(string.startIndex, offsetBy: j)
            string.replaceSubrange(index1...index1, with: String(string[index2]))
            string.replaceSubrange(index2...index2, with: String(string[index1]))
            i += 1
            j -= 1
        }
        return string
    }
    func checkPalindrome(string : String) -> Bool{
        var i = 0, j = string.count-1
        while i < j {
            if string[string.index(string.startIndex, offsetBy: i)] != string[string.index(string.startIndex, offsetBy: j)] {
                return false
            }
            i += 1
            j -= 1
        }
        return true
        
        /*let origStr = string
        let totalLength = string.count-1
        var leftStr = ""
        var rightStr = ""
        
        for i in 0...totalLength/2 {
            
            let rightSide = origStr.index(origStr.startIndex, offsetBy:origStr.count-i-1)
            let lefttSide = origStr.index(origStr.startIndex, offsetBy: i)
            leftStr = String(origStr[lefttSide])
            rightStr = String(origStr[rightSide])
            
            if leftStr != rightStr{
                print("it is not palindrome")
                return
            }else{
                print("it is palindrome")
            }

        }*/
       
    }
    
}
extension String {
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}
