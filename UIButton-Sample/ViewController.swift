//
//  ViewController.swift
//  UIButton-Sample
//
//  Created by Osamu Nishiyama on 2014/09/30.
//  Copyright (c) 2014年 ever sense. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // *** UIButton ***
        
        //No Style Button
        let button = UIButton()
        button.setTitle("Tap Me!", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitle("Tapped!", forState: .Highlighted)
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        button.frame = CGRectMake(0, 0, 300, 50)
        button.tag = 1
        button.layer.position = CGPoint(x: self.view.frame.width/2, y:100)
        button.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        self.view.addSubview(button)

        
        // *** UIButtonType ***
        
        //ContactAdd Button
        let addButton: UIButton = UIButton.buttonWithType(.ContactAdd) as UIButton
        addButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        addButton.tag = 2
        addButton.addTarget(self, action: "tapped:", forControlEvents: .TouchUpInside)
        self.view.addSubview(addButton)
        
        
        //DetailDisclosure Button
        let detailButton: UIButton = UIButton.buttonWithType(.DetailDisclosure) as UIButton
        detailButton.layer.position = CGPoint(x: self.view.frame.width/2, y:300)
        detailButton.tag = 3
        detailButton.addTarget(self, action: "tapped:", forControlEvents: .TouchUpInside)
        self.view.addSubview(detailButton)
        
        
        // *** UIButton with Image ***
        
        let image = UIImage(named: "stop.png") as UIImage
        let imageButton   = UIButton()
        imageButton.tag = 4
        imageButton.frame = CGRectMake(0, 0, 128, 128)
        imageButton.layer.position = CGPoint(x: self.view.frame.width/2, y:450)
        imageButton.setImage(image, forState: .Normal)
        imageButton.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        self.view.addSubview(imageButton)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tapped(sender: UIButton){
        println("Tapped Button Tag:\(sender.tag)")
    }

}

