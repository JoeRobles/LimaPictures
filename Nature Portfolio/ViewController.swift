//
//  ViewController.swift
//  Nature Portfolio
//
//  Created by Super Power on 7/13/15.
//  Copyright (c) 2015 CollDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableMain: UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as? UITableViewCell
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        }
        var label_title : UILabel? = self.view.viewWithTag(1) as? UILabel;
        label_title?.text = "Sample text from code"
        
        var label_thumbnail : UIImageView? = self.view.viewWithTag(2) as? UIImageView;
        label_thumbnail?.image = UIImage(named: "monkLogo250")
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}

