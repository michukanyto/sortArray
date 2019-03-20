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
    var result:[Int] = [0,0,0,0,0]
    
    var textFields:[UITextField] = [];
    var textFieldsResult:[UITextField] = [];
    
    
    
  
    @IBOutlet weak var n1Textview: UITextField!
    @IBOutlet weak var n2TextView: UITextField!
    @IBOutlet weak var n3TextView: UITextField!
    @IBOutlet weak var n4TextView: UITextField!
    @IBOutlet weak var n5TextView: UITextField!
    @IBOutlet weak var n1ResultTextView: UITextField!
    @IBOutlet weak var n2ResultTextView: UITextField!
    @IBOutlet weak var n3ResultTextView: UITextField!
    @IBOutlet weak var n4ResultTextView: UITextField!
    @IBOutlet weak var n5ResultTextView: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textFields.append(n1Textview)
        textFields.append(n2TextView)
        textFields.append(n3TextView)
        textFields.append(n4TextView)
        textFields.append(n5TextView)
        textFieldsResult.append(n1ResultTextView)
        textFieldsResult.append(n2ResultTextView)
        textFieldsResult.append(n3ResultTextView)
        textFieldsResult.append(n4ResultTextView)
        textFieldsResult.append(n5ResultTextView)
        initialize()
    }
    
    func initialize(){
        for i in 0...4{
            textFields[i].text = ""
            textFieldsResult[i].text = "0"
        }
        
        
//        n1TextView.text = "0"
//        n2TextView.text = "0"
//        n3TextView.text = "0"
//        n4TextView.text = "0"
//        n5TextView.text = "0"
//        n1ResultTextView.text = "0"
//        n2ResultTextView.text = "0"
//        n3ResultTextView.text = "0"
//        n4ResultTextView.text = "0"
//        n5ResultTextView.text = "0"
    }


    @IBAction func sortButtonPressed(_ sender: UIButton) {
        
        for i in 0...4{
            numbers[i] = Int(textFields[i].text!)!
        }
        
        result = sortDecrease(arr: numbers)
        
        for i in 0...4{
            textFieldsResult[i].text =  "\(result[i])"
        }
        
//
//        numbers[0] = Int(n1TextView.text!)!
//        numbers[1] = Int(n2TextView.text!)!
//        numbers[2] = Int(n3TextView.text!)!
//        numbers[3] = Int(n4TextView.text!)!
//        numbers[4] = Int(n5TextView.text!)!
//
//
//        n1ResultTextView.text = "\(result[0])"
//        n2ResultTextView.text = "\(result[1])"
//        n3ResultTextView.text = "\(result[2])"
//        n4ResultTextView.text = "\(result[3])"
//        n5ResultTextView.text = "\(result[4])"
        
    }
    
    
    func sortDecrease(arr:[Int]) -> [Int]{
        var newArray1 = [Int]()
        newArray1 = arr
        newArray1.sort(by : >)
        return newArray1
    }
 
    @IBAction func exitButtonPressed(_ sender: UIButton) {
        exit(0)
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        initialize()
    }
    
}

