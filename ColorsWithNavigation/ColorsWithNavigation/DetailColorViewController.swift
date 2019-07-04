//
//  DetailColorViewController.swift
//  ColorsWithNavigation
//
//  Created by Brian Jiang on 7/4/19.
//  Copyright © 2019 Brian Jiang. All rights reserved.
//

import UIKit

class DetailColorViewController: UIViewController {
    
    @IBOutlet weak var LabelNameofColor: UILabel!
    
    var colors: Color?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LabelNameofColor.text = colors?.ColorName
        
        self.view.backgroundColor = colors?.color
        
        self.view.backgroundColor = colors?.color
        
        self.title = colors?.ColorName

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
