//
//  ViewController.swift
//  final
//
//  Created by West, William on 4/18/18.
//  Copyright © 2018 West, David. All rights reserved.
//

import UIKit
class Global {
    var name:String = ""
    var selection:String = ""
    var genre:String = ""
    var violence:Int = 0
    var language:Int = 0
    var sex:Int = 0
    var year:Int = 0
    var cable:Int = 0
    var answer:Int = 0
}


let global = Global()

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    @IBOutlet weak var myName: UITextField!
    
    @IBAction func nameButton(_ sender: Any) {
        global.name = myName.text!
        myName.resignFirstResponder()
        myGreeting.text = "Hello, \(global.name)"    }
    
    @IBOutlet weak var myGreeting: UILabel!
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    let items = [ "Sitcom",  "Drama"]
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        global.selection = items[row]
        
        if(global.selection == "Sitcom") {
            global.genre = "Sitcom"
        }
        if(global.selection == "Drama") {
            global.genre = "Drama"
        }
        answer.text = "Thank you, \(global.name). You have selected \(global.genre)"    }


    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

