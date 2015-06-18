//
//  FirstViewController.swift
//  tabTest
//
//  Created by Arnas Dundulis on 17/06/15.
//  Copyright (c) 2015 Arnas Dundulis. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNew(sender: AnyObject) {
        let vc = storyboard?.instantiateViewControllerWithIdentifier("third") as! UIViewController
        vc.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        presentViewController(vc, animated: true, completion: nil)
    }

}

