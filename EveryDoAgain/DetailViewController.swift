//
//  DetailViewController.swift
//  EveryDoAgain
//
//  Created by Eric Gregor on 2018-02-21.
//  Copyright © 2018 Eric Gregor. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var priorityLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = titleLabel {
                label.text = detail.title?.description
                label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
                label.sizeToFit()
            }
            if let label = descriptionLabel {
                label.text = detail.todoDescription?.description
                label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
                label.sizeToFit()
            }
            if let label = priorityLabel {
                label.text = String(detail.priorityNumber)
                label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
                label.sizeToFit()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

