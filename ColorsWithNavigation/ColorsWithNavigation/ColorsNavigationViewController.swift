//
//  ColorsNavigationViewController.swift
//  ColorsWithNavigation
//
//  Created by Brian Jiang on 7/3/19.
//  Copyright © 2019 Brian Jiang. All rights reserved.
//

import UIKit

class ColorsNavigationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colors = [Color(ColorName: "Red", color: UIColor.red),
                  Color(ColorName: "Orange", color: UIColor.orange),
                  Color(ColorName: "Yellow", color: UIColor.yellow),
                  Color(ColorName: "Green", color: UIColor.green),
                  Color(ColorName: "Blue", color: UIColor.blue),
                  Color(ColorName: "Purple", color: UIColor.purple),
                  Color(ColorName: "Brown", color: UIColor.brown)]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.ColorName
        cell.backgroundColor = color.color
        
        return cell
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
