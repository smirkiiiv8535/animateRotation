//
//  ViewController.swift
//  animateRotation
//
//  Created by 林祐辰 on 2020/4/16.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstRotate: UIImageView!
    @IBOutlet weak var secondRotate: UIImageView!
    @IBOutlet weak var thirdRotate: UIImageView!
    

    
    func rotateFirst(imageView:UIImageView,randomDecideSecond:Double){
    
      let roundLikeCircle = CABasicAnimation(keyPath: "transform.rotation")
        roundLikeCircle.fromValue = 0
        roundLikeCircle.toValue = CGFloat.pi*2
        roundLikeCircle.duration = randomDecideSecond
        roundLikeCircle.repeatCount = .infinity
        imageView.layer.add(roundLikeCircle, forKey: nil)
        
    }
    
    
    func rotateTwo(imageView:UIImageView,randomDecideSecond:Double){

            let roundAgain = CAKeyframeAnimation(keyPath: "transform.rotation")
            roundAgain.duration = randomDecideSecond
            roundAgain.fillMode = CAMediaTimingFillMode.forwards
            roundAgain.repeatCount = .greatestFiniteMagnitude
            roundAgain.values = [0, CGFloat.pi, CGFloat.pi*3/2, CGFloat.pi*2]
            roundAgain.keyTimes = [NSNumber(value: 0.25),NSNumber(value: 0.5), NSNumber(value: 0.75), NSNumber(value: 1.0)]
            
            imageView.layer.add(roundAgain, forKey: "rotate")
    }
    
    
    func rotateThird(imageView:UIImageView,changeLocation:Int,scaleNum:Double,rotateAngle:Int){

        imageView.transform = CGAffineTransform.identity.translatedBy(x: CGFloat(changeLocation), y: CGFloat(changeLocation)).scaledBy(x: CGFloat(scaleNum) , y: CGFloat(scaleNum)).rotated(by: CGFloat(rotateAngle))

    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rotateFirst(imageView:firstRotate,randomDecideSecond: 5.0)
        rotateFirst(imageView:secondRotate,randomDecideSecond: 7.0)
        rotateThird(imageView: thirdRotate, changeLocation: -20, scaleNum: 0.5 , rotateAngle: 200)
    }
    
    


}

