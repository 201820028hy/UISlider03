//
//  ViewController.swift
//  UISlider03
//
//  Created by dit03 on 2019. 5. 2..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = String(Int(mySlider.value))
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    @IBAction func SliderMoved(_ sender: Any) {
        myLabel.text = String(Int(mySlider.value))
        myTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)
        
        cell.textLabel?.text = String(Int(mySlider.value) + indexPath.row)
        return cell
    }
    
}

