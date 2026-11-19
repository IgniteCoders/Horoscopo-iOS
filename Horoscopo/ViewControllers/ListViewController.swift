//
//  ViewController.swift
//  Horoscopo
//
//  Created by Turno Mananas on 18/11/2026.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Horoscope.horoscopeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Horoscope Cell", for: indexPath) as! HoroscopeViewCell
        let horoscope = Horoscope.horoscopeList[indexPath.row]
        cell.render(with: horoscope)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow!
        let horoscope = Horoscope.horoscopeList[indexPath.row]
        detailViewController.horoscope = horoscope
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
}

