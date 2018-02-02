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
        //print(reverseString(str: "asdfghjkl"))
         // removeDuplicateCopyLetterFromString()
       // countTwoTimesConsecutiveRepeatedGivenLetter()
        //findMaximumTimesConsecutiveRepeatedGivenElementInString()
       // findMaxrepeatatingWordIngivenString()
         // findContiguousElementFromAnArray()
        //findMissingNumberFromAnArray()
          findSquareRoot(value: 169)
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
    
    func findSquareRoot(value : Int){
        
        for i in 1...value/2{
            
            if i*i == value{
                
                print("square root of : \(value) is : \(i)")
            }
        }
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
    
    func removeDuplicateCopyLetterFromString(){
        
        var str = "revem"
     
        for i in 0..<str.count-1{
            
            let index1 = str.index(str.startIndex, offsetBy: i)
            let char1 = str[index1]
            let newStr = str.suffix(from: index1)
            
            for j in 1..<newStr.count-1{
                
                let index2 = str.index(str.startIndex, offsetBy: j)
               let nextChar = str[str.index(after: index2)]
                if char1 == nextChar {
                   
                str.replaceSubrange(index2...index2, with: "")
                }
            }
            
        }
        print("string : \(str)")
        
    }
    func countTwoTimesConsecutiveRepeatedGivenLetter(){
        
        let str = "abbdbabbc"
        var count1 = 0
        var count2 = 0
        var length = 0

        while length < str.count{
            
            let index = str.index(str.startIndex, offsetBy: length)
            let firstChar = str[index]
            let endIndex = str.index(str.endIndex, offsetBy: -1)
            if index != endIndex{
                
               let nextChar = str[str.index(after: index)]
                
                if firstChar == "b"{
                    count1 += 1
                    
                }else {
                    
                    count1 = 0
                }
                if count1 == 2 && nextChar != "b"{
                    
                    count2 += 1
                    
                }
            }
            length += 1
        }
            
           print("b appears : \(count2) times")
        }
    
    func findMaximumTimesConsecutiveRepeatedGivenElementInString(){
        
        var count1 = 0
        var maxCount = 0
        let str = "22345222722222"
        
        for i in 0..<str.count{
            
            let index = str.index(str.startIndex, offsetBy: i)
            let firstChar = str[index]
            
            if firstChar == "2"{
                count1 += 1
                
                if count1 > maxCount{
                    maxCount = count1
                }
                
            }else {
                
                count1 = 0
            }
        }
        
        print("max count of 2 is : \(maxCount)")
    }
    
    func findMaxrepeatatingWordIngivenString(){
        
        var count = 0
        var maxCount = 0
        let str = "lion cat dog cow lion fox lion elephant cat lion tiger lion"
        let strArray = str.components(separatedBy: " ")
        var firstElement = ""
        var element = ""
        for i in 0..<strArray.count{
            
            firstElement = strArray[i]
           
            for j in 0..<strArray.count{
                
                let nextelement = strArray[j]
                
                if firstElement == nextelement{
                    
                    count += 1
                    if count > maxCount{
                        
                        maxCount = count
                        element = firstElement
                        
                    }
                    
                }
            }
            count = 0
        }
        
       print("max repeated is : \(element) and times : \(maxCount)")
        
    }
    
    // MARK:- LOGIC ON ARRAY !!!!!!!
    
    func findContiguousElementFromAnArray(){
    
        let array = [1,3,5,4,6,9]
        var maxLength = 0
        var max = 0
        var min = 0
        for i in 0..<array.count-1{
            
            max = array[i]
            min = array [i]
            for j in i+1..<array.count{
                
                if (max < array[j]){
                    max = array[j]
                    
                }
                if (min > array[j]){
                    
                    min = array[j]
                }
                
                if ((max - min) == (j-i)) {
                    
                    if (j-i+1) > maxLength{
                        
                        maxLength = j-i+1
                        print("maxLength : \(maxLength)")
                        print(array[j])
                        print(array[i])
                    }
                }
                
            }
            
        }
        
    }
    
    func findMissingNumberFromAnArray(){
        
        let array = [7,2,5,4,6,1]
        var x = array[0]
        var y = 1
        let length = array.count
        for i in 1..<length{
            
             x = x^array[i]
        }
        for j in 2...length+1{
            
            y = y^j
        }
        
        let result = x^y
        
        print(result)
    }
}





