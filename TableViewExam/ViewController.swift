//
//  ViewController.swift
//  TableViewExam
//
//  Created by Fahima Qaybdid on 5/30/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    var names = ["Aayan Bryan","Amina Joyce","Anthony Yates","Daniela Ryan","Frayja Stone","Gabrielle Chavez","Gary Hendrix","Harmony Osborne","Jensen Melendez","Johnathan Singh","Leland Richardson","Luc Thornton","Lucas Frederick","Luisa Hoover","Neil Chen","Rhea Blevins","Stevie Mcgee","Sylvie Collier","Theodore Guerrero","Valentina Dunnlap"]
    var labFee = ["$5.58" ,"$4.71" ,"$5.78" ,"$9.66" ,"$6.22" ,"$2.36" ,"$9.01" ,"$9.42" ,"$0.68" ,"$2.21" ,"$5.45" ,"$6.48" , "$6.09", "$6.75", "$1.04", "$2.83","$3.41","$0.29","$6.53", "$9.17","$8.29"]

    var category = ["Library","Library","Lab","Library","Lab","Lab","Cafe","Library","Cafe","Library","Cafe","Cafe","Lab","Cafe","Lab","Library","Library","Lab","Cafe","Lab","Cafe"]
    var categoryImages = ["library","library","lab","library","lab","lab","cafe","library","cafe","library","cafe","cafe","lab","cafe","lab","library","library","lab","cafe","lab","cafe"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "\(names[indexPath.row])"
        cell.detailTextLabel?.text = "Fee : \(labFee[indexPath.row]) \(category[indexPath.row])"

            cell.imageView?.image = UIImage(named: categoryImages[indexPath.row] )
        
        
        return cell
    }

}

