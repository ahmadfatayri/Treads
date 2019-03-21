//
//  CurrentRunVC.swift
//  Treads
//
//  Created by Ahmad Fatayri on 3/21/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import UIKit

class CurrentRunVC: LocationVC {

    @IBOutlet weak var swipBGImageView: UIImageView!
    @IBOutlet weak var sliderImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeGesture = UIPanGestureRecognizer(target: self, action: #selector(endRunSwiped(sender:)))
        sliderImageView.addGestureRecognizer(swipeGesture)
        sliderImageView.isUserInteractionEnabled = true
        swipeGesture.delegate = self as? UIGestureRecognizerDelegate
        
    }
    
    @objc func endRunSwiped(sender: UIPanGestureRecognizer) {
        let minAdjust: CGFloat = 80
        let maxAdjust: CGFloat = 120
        if let sliderView = sender.view {
            if sender.state == UIGestureRecognizer.State.began || sender.state == UIGestureRecognizer.State.changed {
                let translation = sender.translation(in: self.view)
                if sliderView.center.x >= (swipBGImageView.center.x - minAdjust) && sliderView.center.x <= (swipBGImageView.center.x + maxAdjust) {
                    sliderView.center.x = sliderView.center.x + translation.x
                } else if sliderView.center.x >= (swipBGImageView.center.x + maxAdjust) {
                    sliderView.center.x = swipBGImageView.center.x + maxAdjust
                    //End run code goes here
                    dismiss(animated: true, completion: nil)
                } else {
                    sliderView.center.x = swipBGImageView.center.x - minAdjust
                }
                
                sender.setTranslation(CGPoint.zero, in: self.view)
            } else if sender.state == UIGestureRecognizer.State.ended {
                UIView.animate(withDuration: 0.1) {
                    sliderView.center.x = self.swipBGImageView.center.x - minAdjust
                }
            }
        }
    }
}
