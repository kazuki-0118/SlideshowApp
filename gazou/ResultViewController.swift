//
//  ResultViewController.swift
//  gazou
//
//  Created by kazuki on 2021/01/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var kakudai: UIImageView!
    var nowIndex2:Int = 0
    var imageArray:[UIImage] = [
        UIImage(named: "gazou1")!,
        UIImage(named: "gazou2")!,
        UIImage(named: "gazou3")!,
        UIImage(named: "gazou4")!
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    kakudai.image = imageArray[nowIndex2]
        
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
