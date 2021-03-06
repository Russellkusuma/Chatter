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
        var post = detailItem as! Post
        
        detailDateLabel?.text = DateFormatter.localizedString(from: post.date as Date, dateStyle: .short, timeStyle: .short)
        detailUserNameLabel?.text = post.userName
        detailDescriptionLabel?.text = post.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var detailItem: Post? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
}


