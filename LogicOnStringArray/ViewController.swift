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
        printFactorial()

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

    
}

