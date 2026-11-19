//
//  SessionManager.swift
//  Horoscopo
//
//  Created by Turno Mananas on 19/11/2026.
//

import Foundation

class SessionManager {
    
    private let defaults = UserDefaults.standard
    
    func setFavorite(id: String) {
        defaults.set(id, forKey: "FAVORITE_HOROSCOPE")
    }
    
    func getFavorite() -> String {
        defaults.string(forKey: "FAVORITE_HOROSCOPE") ?? ""
    }
    
    func isFavorite(id: String) -> Bool {
        return id == getFavorite()
    }
}
