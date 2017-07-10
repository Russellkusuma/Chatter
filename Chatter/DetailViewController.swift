//
//  DetailViewController.swift
//  Chatter
//
//  Created by iD Student on 7/7/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailDateLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailUserNameLabel: UILabel!
        
        func configureView() {
            
            let post = detailItem
            
            detailDescriptionLabel?.text = post?.text
            detailUserNameLabel?.text = post?.userName
            detailDateLabel?.text = DateFormatter.localizedString(from: post?.date as! Date, dateStyle: .short, timeStyle: .short)
        }
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            self.configureView()
        }
    
        
        override func didReceiveMemoryWarning() {
            
            super.didReceiveMemoryWarning()
        }
    var detailItem: Post? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
}


