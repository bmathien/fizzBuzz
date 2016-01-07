//
//  ViewController.swift
//  fizzBuzz
//
//  Created by teacher on 9/28/15.
//  Copyright (c) 2015 Mathien. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myLabel: UILabel!

    var labelNumber = 0

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    @IBAction func longPressHold(sender: UILongPressGestureRecognizer)
    {
        print("longpress")
        labelNumber = 0
        myLabel.text = "\(labelNumber)"
        myLabel.font = UIFont(name: "Futura", size: 200)
        view.backgroundColor = UIColor.blackColor()
        myLabel.textColor = UIColor.whiteColor()
    }


    @IBAction func screenTap(sender: UITapGestureRecognizer) {
        ++labelNumber
        if (labelNumber % 3 == 0) && (labelNumber % 5 == 0)
        {
            myLabel.text = "FIZZ \nBUZZ"
            myLabel.font = UIFont(name: "Futura", size: 100)
            myLabel.textColor = UIColor.blackColor()
            view.backgroundColor = UIColor.yellowColor()
        }
        else if labelNumber % 3 == 0
        {
            myLabel.text = "FIZZ"
            myLabel.font = UIFont(name: "Futura", size: 100)
            myLabel.textColor = UIColor.blackColor()
            view.backgroundColor = UIColor.cyanColor()
        }
        else if labelNumber % 5 == 0
        {
            myLabel.text = "BUZZ"
            myLabel.font = UIFont(name: "Futura", size: 100)
            myLabel.textColor = UIColor.blackColor()
            view.backgroundColor = UIColor.magentaColor()
        }
        else
        {
            myLabel.text = "\(labelNumber)"
            myLabel.font = UIFont(name: "Futura", size: 200)
            view.backgroundColor = UIColor.blackColor()
            myLabel.textColor = UIColor.whiteColor()
        }

}
}