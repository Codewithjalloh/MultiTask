//
//  ViewController.swift
//  MultiTask
//
//  Created by wealthyjalloh on 29/06/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activeLabel: UILabel!
    @IBOutlet weak var notificationLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateInterface:", name: UIApplicationWillEnterForegroundNotification, object: nil)
        
    }
    
    func updateInterface(notification: NSNotification) {
        notificationLabel.text = "Back to background with notifications"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

