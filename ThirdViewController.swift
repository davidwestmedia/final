//
//  ThirdViewController.swift
//  final
//
//  Created by West, William on 4/23/18.
//  Copyright © 2018 West, David. All rights reserved.
//

import UIKit

struct Feedback: Decodable {
    let id: String
    let name: String
}

class ThirdViewController: UIViewController {
    var selection: String!

    
  
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var myAnswer: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var cableLabel: UILabel!
    
    
    @IBAction func myButton(_ sender: Any) {
        //establishes the selection and starts the text in theMonth Text View
        selection = myAnswer.text
        answer.text = "You are most like :\n"
        
        // url for json file. Must be https and hosted on a secure server. Change the location to your json file on your server
        
        let json = "https:davidwestmedia.com/json/answer.json"
        
        // guard statements protect the app if there is no response
        guard let url = URL(string: json)
            else { return }
        
        // this area sets up a urlsession with the json
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data
                else { return }
            
            // use do, try, catch to deal with errors
            do {
                
                // JSONDecoder decodes json array
                let answers = try JSONDecoder().decode([Feedback].self, from: data)
                //enumerated adds the index to the array
                for (_, answer) in answers.enumerated() {
                    if(answer.id == self.selection) {
                        DispatchQueue.main.sync {
                            self.answer.text! += ("answer.name")
                        }

                    }
                }
            }
                
            catch let jsonErr {
                print("Error", jsonErr)
            }
            }.resume()
    }
    
    @IBAction func yearSwitch(_ sender: UISwitch) {
        if sender.isOn {
            global.year = 1
            yearLabel.text = "1980s"        }
        else {
            global.year = 2
            yearLabel.text = "1990s"
        }
        
    }
    @IBAction func cableSwitch(_ sender: UISwitch) {
        if sender.isOn {
            global.cable = 1
            cableLabel.text = "Broadcast"        }
        else {
            global.cable = 2
            cableLabel.text = "Cable"
        }
}
    
    
    
    

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
