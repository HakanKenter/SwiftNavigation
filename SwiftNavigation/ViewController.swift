//
//  ViewController.swift
//  SwiftNavigation
//
//  Created by kenter on 12/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let identifierAvecSegue = "AvecSender"
    let identifierAvecDetail = "AvecDetail"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifierAvecSegue {
            // Est ce que la prochaine destination est ThirdController si oui nextController = ThirdController
            if let nextController = segue.destination as? ThirdController {
                if let color = sender as? UIColor {
                    nextController.view.backgroundColor = color
                }
            }
        }
        if segue.identifier == identifierAvecDetail {
            if let next = segue.destination as? ThirdController {
                next.text = "On a passé des détails"
            }
        }
    }

    @IBAction func buttonSenderPressed(_ sender: UIButton) {
        performSegue(withIdentifier: identifierAvecSegue, sender: UIColor.systemRed)
    }
    
    @IBAction func buttonDetailPressed(_ sender: Any) {
        performSegue(withIdentifier: identifierAvecDetail, sender: nil)
    }
    
    @IBAction func noStoryPressed(_ sender: Any) {
        let noStory = NoStoryBoardController()
        present(noStory, animated: true, completion: nil)
    }
}

