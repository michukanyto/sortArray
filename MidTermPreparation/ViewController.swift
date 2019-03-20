//
//  ViewController.swift
//  MidTermPreparation
//
//  Created by Marlon Escobar on 2019-03-20.
//  Copyright © 2019 Marlon Escobar A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numbers:[Int] = [0,0,0,0,0]
//    var result:[Int] = [0,0,0,0,0]
    
    var textFields:[UITextField] = [];
    var textFieldsDecrease:[UITextField] = [];
    var textFieldsIncrease:[UITextField] = [];
    
    
    
  
    @IBOutlet weak var n1Textview: UITextField!
    @IBOutlet weak var n2TextView: UITextField!
    @IBOutlet weak var n3TextView: UITextField!
    @IBOutlet weak var n4TextView: UITextField!
    @IBOutlet weak var n5TextView: UITextField!
    @IBOutlet weak var n1DecreaseTextView: UITextField!
    @IBOutlet weak var n2DecreaseTextView: UITextField!
    @IBOutlet weak var n3DecreaseTextView: UITextField!
    @IBOutlet weak var n4DecreaseTextView: UITextField!
    @IBOutlet weak var n5DecreaseTextView: UITextField!
    @IBOutlet weak var n1IncreaseTextView: UITextField!
    @IBOutlet weak var n2IncreaseTextView: UITextField!
    @IBOutlet weak var n3IncreaseTextView: UITextField!
    @IBOutlet weak var n4IncreaseTextView: UITextField!
    @IBOutlet weak var n5IncreaseTextView: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textFields.append(n1Textview)
        textFields.append(n2TextView)
        textFields.append(n3TextView)
        textFields.append(n4TextView)
        textFields.append(n5TextView)
        textFieldsDecrease.append(n1DecreaseTextView)
        textFieldsDecrease.append(n2DecreaseTextView)
        textFieldsDecrease.append(n3DecreaseTextView)
        textFieldsDecrease.append(n4DecreaseTextView)
        textFieldsDecrease.append(n5DecreaseTextView)
        textFieldsIncrease.append(n1IncreaseTextView)
        textFieldsIncrease.append(n2IncreaseTextView)
        textFieldsIncrease.append(n3IncreaseTextView)
        textFieldsIncrease.append(n4IncreaseTextView)
        textFieldsIncrease.append(n5IncreaseTextView)
        
        
        initialize()
    }
    
    func initialize(){
        for i in 0...4{
            textFields[i].text = ""
            textFieldsDecrease[i].text = ""
            textFieldsIncrease[i].text = ""
        }
 
    }


    @IBAction func sortButtonPressed(_ sender: UIButton) {
        
        for i in 0...4{
            numbers[i] = Int(textFields[i].text!)!
        }
        
        let (decreaseArray,increaseArray) = sortDecrease(arr: numbers)
        
        for i in 0...4{
            textFieldsDecrease[i].text =  "\(decreaseArray[i])"
            textFieldsIncrease[i].text =  "\(increaseArray[i])"
        }
        
    }
    
    
    func sortDecrease(arr:[Int]) -> ([Int],[Int]){
        var newArrayDecrease = [Int]()
        var newArrayIncrease = [Int]()
        newArrayDecrease = arr
        newArrayIncrease = arr
        newArrayDecrease.sort(by : >)
        newArrayIncrease.sort()
        return (newArrayDecrease,newArrayIncrease)
    }
 
    @IBAction func exitButtonPressed(_ sender: UIButton) {
        exit(0)
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        initialize()
    }
    
}

