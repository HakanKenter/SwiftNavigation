//
//  AvecNavController.swift
//  SwiftNavigation
//
//  Created by kenter on 12/07/2022.
//

import UIKit

class AvecNavController: UIViewController {
    
    let thirdDetail = "thirdDetail"
    let thirdSender = "thirdSender"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "noNav" {
            if let n = segue.destination as? SimpleController {
                n.showNav = false
            }
        } else if segue.identifier == thirdSender {
            if let nextController = segue.destination as? ThirdController {
                if let color = sender as? UIColor {
                    nextController.view.backgroundColor = color
                }
            }
        } else if segue.identifier == thirdDetail {
            if let next = segue.destination as? ThirdController {
                next.text = "On à réussi à passé par la Navigation Controller"
            }
        }
    }
    

    @IBAction func detailPressed(_ sender: Any) {
        performSegue(withIdentifier: thirdDetail, sender: nil)
    }
    
    @IBAction func senderPressed(_ sender: Any) {
        performSegue(withIdentifier: thirdSender, sender: UIColor.systemGreen)
    }
    
    @IBAction func noStoryPressed(_ sender: Any) {
        let no = NoStoryBoardController()
        self.navigationController?.pushViewController(no, animated: true)
//        present(no, animated: true, completion: nil)
    }
    
    @IBAction func noNavPressed(_ sender: Any) {
        performSegue(withIdentifier: "noNav", sender: false)
    }
    
}
