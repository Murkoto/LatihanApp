//
//  DetailViewController.swift
//  Latihan App
//
//  Created by Cesa Anwar on 12/06/20.
//  Copyright © 2020 Cesa Anwar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var desc: UILabel!
    
    var detail : (  title: String?,
                    desc: String?,
                    image: UIImage?
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = detail.title
        desc.text = detail.desc
        logo.image = detail.image
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
