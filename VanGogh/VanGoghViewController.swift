//
//  VanGoghViewController.swift
//  VanGogh
//
//  Created by Ya Yu Yeh on 2022/8/14.
//

import UIKit

class VanGoghViewController: UIViewController {
    @IBOutlet weak var vangoghImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        vangoghImage.layer.cornerRadius = 100
        vangoghImage.layer.borderWidth = 7
        vangoghImage.layer.borderColor = UIColor.darkGray.cgColor

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
