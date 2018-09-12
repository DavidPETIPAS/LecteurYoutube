//
//  TableauController.swift
//  LecteurYoutube
//
//  Created by David PETIPAS on 05/09/2018.
//  Copyright © 2018 David PETIPAS. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    let identifiantCell = "ChansonCell"
    let identifiantSegue = "VersVideo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        navigationController?.title = "Mes vidéos préférés"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChasonCell {
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chanson = chansons[indexPath.row]
        performSegue(withIdentifier: identifiantSegue, sender: chanson)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifiantSegue {
            if let nouveauController = segue.destination as? VideoController {
                nouveauController.chanson = sender as? Chanson
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artiste: "Casseur flowters", titre:"Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(cool)
        tableView.reloadData()
    }
}
