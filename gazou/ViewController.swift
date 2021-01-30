//
//  ViewController.swift
//  gazou
//
//  Created by kazuki on 2021/01/18.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func onTapImage(_ sender: Any) {
        performSegue(withIdentifier:"result", sender: nil)
        if (timer != nil){
            timer.invalidate()}
        timer = nil
        startButton.setTitle("再生", for: .normal)
        susumuButton.isEnabled = true
        modoruButton.isEnabled = true
    }
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var susumuButton: UIButton!
    @IBOutlet weak var modoruButton: UIButton!
    var nowIndex:Int = 0
    var timer: Timer!
    
    var imageArray:[UIImage] = [
            UIImage(named: "gazou1")!,
            UIImage(named: "gazou2")!,
            UIImage(named: "gazou3")!,
            UIImage(named: "gazou4")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.nowIndex2 = nowIndex
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
    if (timer == nil){
                timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
                startButton.setTitle("停止", for: .normal)
        susumuButton.isEnabled = false
        modoruButton.isEnabled = false
            }else{
                timer.invalidate()
                timer = nil
                startButton.setTitle("再生", for: .normal)
                susumuButton.isEnabled = true
                modoruButton.isEnabled = true
            }
        }
    @objc func changeImage() {
           // indexを増やして表示する画像を切り替える
           nowIndex += 1

           // indexが表示予定の画像の数と同じ場合
           if (nowIndex == imageArray.count) {
               // indexを一番最初の数字に戻す
               nowIndex = 0
}
        imageView.image = imageArray[nowIndex]
    }

    @IBAction func susumu(_ sender: Any) {
            nowIndex += 1
        if (nowIndex == 4) {
            // indexを一番最初の数字に戻す
            nowIndex = 0}
        
            imageView.image = imageArray[nowIndex]
        }
    @IBAction func modoru(_ sender: Any) {
        nowIndex -= 1
    if (nowIndex == -1) {
        nowIndex = 3
    }
            imageView.image = imageArray[nowIndex]
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
}
