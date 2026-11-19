//
//  DetailViewController.swift
//  Horoscopo
//
//  Created by Turno Mananas on 19/11/2026.
//

import UIKit

class DetailViewController: UIViewController {
    
    var horoscope: Horoscope!
    var isFavorite = false
    
    @IBOutlet weak var favoriteMenuItem: UIBarButtonItem!

    @IBOutlet weak var signImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = horoscope.name
        navigationItem.subtitle = horoscope.dates
        signImageView.image = horoscope.sign
        
        isFavorite = SessionManager().isFavorite(id: horoscope.id)
        setFavoriteIcon()
    }
    
    func setFavoriteIcon() {
        if isFavorite {
            favoriteMenuItem.image = UIImage(systemName: "heart.fill")
        } else {
            favoriteMenuItem.image = UIImage(systemName: "heart")
        }
    }

    @IBAction func favoriteMenuClicked(_ sender: Any) {
        let session = SessionManager()
        if (isFavorite) {
            session.setFavorite(id: "")
        } else {
            session.setFavorite(id: horoscope.id)
        }
        isFavorite = !isFavorite
        setFavoriteIcon()
    }
    
    @IBAction func shareMenuClicked(_ sender: Any) {
        
    }
}
