//
//  ChallangesViewController.swift
//  Latihan App
//
//  Created by Cesa Anwar on 12/06/20.
//  Copyright © 2020 Cesa Anwar. All rights reserved.
//

import UIKit

class ChallangesViewController: UIViewController {

    @IBOutlet weak var arvr: UIStackView!
    @IBOutlet weak var flutter: UIStackView!
    @IBOutlet weak var edu: UIStackView!
    @IBOutlet weak var web: UIStackView!
    
    var challenges = [ ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
    ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
    ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
    ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
    ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
    ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapped(parameter: &arvr)
        addTapped(parameter: &flutter)
        addTapped(parameter: &edu)
        addTapped(parameter: &web)
        // Do any additional setup after loading the view.
    }
    
    func addTapped(parameter: inout UIStackView) {
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(
            UITapGestureRecognizer(
                target: self,
                action: #selector(self.onTapped))
        )
    }
    
    @objc func onTapped(gesture: UIGestureRecognizer) {
            
        let controller = UIStoryboard(
            name: "Main",
            bundle: nil
        ).instantiateViewController(identifier: "DetailViewControllerScene") as! DetailViewController
        
        switch gesture.view {
        case arvr:
            controller.detail = challenges[0]
        case flutter:
            controller.detail = challenges[1]
        case edu:
            controller.detail = challenges[2]
        case web:
            controller.detail = challenges[3]
        default:
            controller.detail = challenges[4]
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
        
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
