//
//  ViewController.swift
//  Latihan App
//
//  Created by Cesa Anwar on 08/06/20.
//  Copyright © 2020 Cesa Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editProfile(_ sender: Any) {
        let alert = UIAlertController(
            title: "Apakah anda berniat mengubah profil?",
            message: "Anda dapat memperbarui profil sekarang juga.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "Ya",
            style: .default,
            handler: { action in
                print("Mengganti profil")
            }
        ))
        
        alert.addAction(UIAlertAction(
            title: "Tidak",
            style: .cancel,
            handler: { action in
                print("Membatalkan mengganti profil")
            }
        ))
        
        self.present(alert, animated: true)
    }
    
}

