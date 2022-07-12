//
//  ThirdController.swift
//  SwiftNavigation
//
//  Created by kenter on 12/07/2022.
//

import UIKit

class ThirdController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            textLabel.text = text!
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
