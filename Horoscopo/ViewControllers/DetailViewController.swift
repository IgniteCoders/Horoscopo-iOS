//
//  DetailViewController.swift
//  Horoscopo
//
//  Created by Turno Mananas on 19/11/2026.
//

import UIKit

class DetailViewController: UIViewController {
    
    var horoscope: Horoscope!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = horoscope.name
        navigationItem.subtitle = horoscope.dates
    }

}
