//
//  FirstViewController.swift
//  tabTest
//
//  Created by Arnas Dundulis on 17/06/15.
//  Copyright (c) 2015 Arnas Dundulis. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBAction func showNew(sender: AnyObject) {
        let vc = storyboard?.instantiateViewControllerWithIdentifier("third") as! UIViewController
        vc.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        presentViewController(vc, animated: true, completion: nil)
    }
}

