//
//  TableauController.swift
//  LecteurYoutube
//
//  Created by David PETIPAS on 05/09/2018.
//  Copyright © 2018 David PETIPAS. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITabBarDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artiste: "Casseur flowters", titre:"Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(cool)
        tableView.reloadData()
    }
}
