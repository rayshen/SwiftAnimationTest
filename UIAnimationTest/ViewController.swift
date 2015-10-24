//
//  ViewController.swift
//  UIAnimationTest
//
//  Created by shen on 15/10/24.
//  Copyright © 2015年 shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var popView:UIView!
    var clkbtn:UIButton!=UIButton()
    var display:Bool=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popView=UIView();
        popView.frame=CGRectMake(0,self.view.frame.size.height, self.view.frame.size.width, 100);
        popView.backgroundColor=UIColor.redColor();
        self.view.addSubview(popView);
        
        clkbtn=UIButton();
        clkbtn.frame=CGRectMake(self.view.frame.size.width/2-30, self.view.frame.size.height/2-20, 60, 40);
        clkbtn.setTitle("弹出", forState: UIControlState.Normal);
        clkbtn.backgroundColor=UIColor.grayColor();
        clkbtn.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(clkbtn);
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func buttonClicked(sender:UIButton)
    {
        if(display==false){
            display=true;
            clkbtn.setTitle("隐藏", forState: UIControlState.Normal);
            UIView.animateWithDuration(0.5, animations: {
                self.popView.frame=CGRectMake(0,self.view.frame.size.height-100, self.view.frame.size.width, 100);
                }, completion: nil);
        }else{
            display=false;
            clkbtn.setTitle("弹出", forState: UIControlState.Normal);
            UIView.animateWithDuration(0.5, animations: {
                self.popView.frame=CGRectMake(0,self.view.frame.size.height, self.view.frame.size.width, 100);
                }, completion: nil);
        }
    }
}

