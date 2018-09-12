//
//  VideoController.swift
//  LecteurYoutube
//
//  Created by David PETIPAS on 12/09/2018.
//  Copyright © 2018 David PETIPAS. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson?.titre
        }
    }

}
