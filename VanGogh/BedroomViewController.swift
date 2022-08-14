//
//  BedroomViewController.swift
//  VanGogh
//
//  Created by yeh on 2022/8/1.
//

import UIKit

class BedroomViewController: UIViewController {


    @IBOutlet weak var bedroomImageView: UIImageView!
    @IBOutlet weak var bedroomTextView: UITextView!
    @IBOutlet weak var bedroomPageController: UIPageControl!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
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
    
    var index = 0
    func updatedUI()
    {
        bedroomImageView.image = UIImage(named: bedroom[index])
        bedroomTextView.text = intro[index]
        bedroomPageController.currentPage = index
        
        if index == 0
        {
            button2.isHidden = true
            button3.isHidden = true
        }
        else if index == 1
        {
            button1.isHidden = true
            button3.isHidden = true
        }
        else
        {
            button1.isHidden = true
            button2.isHidden = true
        }
    }
    
    @IBAction func bedroomControl(_ sender: UIPageControl)
    {
        index = bedroomPageController.currentPage
        updatedUI()
    }
    
    @IBAction func pre(_ sender: Any)
    {
        index -= 1
        if index < 0
        {
            index = bedroom.count - 1
        }
        updatedUI()
    }
    
    @IBAction func next(_ sender: Any)
    {
        index += 1
        if index == bedroom.count
        {
            index = 0
        }
        updatedUI()
    }
    
    
//    @IBAction func buttonPress(_ sender: Any)
//    {
////        if let bedroomPass = self.storyboard?.instantiateViewController(withIdentifier: "bedroom1")
//    }
    
    
    
    //        bedroomButton.isHidden
    override func viewDidLoad() {
        super.viewDidLoad()
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
