//
//  BedroomViewController.swift
//  VanGogh
//
//  Created by yeh on 2022/8/1.
//

import UIKit

class BedroomViewController: UIViewController {

    @IBOutlet weak var bedroomButton: UIButton!
    @IBOutlet weak var bedroomImageView: UIImageView!
    @IBOutlet weak var bedroomTextView: UITextView!
    @IBOutlet weak var bedroomPageController: UIPageControl!
    
    let bedroom = ["在亞爾的臥室_version1", "在亞爾的臥室_version2", "在亞爾的臥室_version3"]
    let intro = [
"""
,1888
oil on canvas, 72 x 90 cm
Van Gogh Museum, Amsterdam
""",

"""
Sep.,1889
oil on canvas, 72 x 90 cm
Art Institute of Chicago
""",

"""
end Sep.,1889
oil on canvas, 57.5 x 74 cm
Musée d'Orsay, Paris
"""
    ]
    let button = ["button1", "button2", "button3"]

    
    
    var index = 0
    @IBAction func bedroomControl(_ sender: UIPageControl)
    {
        index = bedroomPageController.currentPage
        bedroomImageView.image = UIImage(named: bedroom[index])
        bedroomTextView.text = intro[index]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
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
