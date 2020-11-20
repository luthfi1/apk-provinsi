//
//  ViewController.swift
//  CustumCellTableViewFunn
//
//  Created by muhammad luthfi farizqi on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    var countries = ["Brazil", "Canada", "Germany", "India", "Japan", "Uk", "Usa","Jakarta","Jawa Barat","Jawa Timur","Banten","Aceh","Bali","Jawa Tengah","Kalimatan","Gorontalo","Bangka Belitung"]
    
    @IBOutlet weak var countryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTableView.delegate = self
        countryTableView.dataSource = self
        
        //making table view look good
        countryTableView.separatorStyle = .none
        countryTableView.showsVerticalScrollIndicator = false
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "countryCell") as! CountryTVC
        let country = countries[indexPath.row]
        
        cell.countryLbl.text = country
        cell.countryImgView.image = UIImage(named: country)
        
        //make cell look goood
        cell.countryView.layer.cornerRadius = cell.countryView.frame.height / 2
        cell.countryView.layer.cornerRadius = cell.countryImgView.frame.height / 2
        
        
        return cell
    }
    
    
    
}
