//
//  SecondViewController.swift
//  final
//
//  Created by West, William on 4/23/18.
//  Copyright © 2018 West, David. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func violenceSilder(_ sender: UISlider) {
        global.violence = Int(sender.value)
        violenceLabel.text = "\(global.violence)"
    }
    
    @IBAction func languageSlider(_ sender: UISlider) {
        global.language = Int(sender.value)
        languageLabel.text = "\(global.language)"
    }
    
    @IBAction func sexSlider(_ sender: UISlider) {
        global.sex = Int(sender.value)
        sexLabel.text = "\(global.sex)"
    }
    
    @IBOutlet weak var violenceLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
