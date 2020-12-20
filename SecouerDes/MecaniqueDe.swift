//
//  MecaniqueDe.swift
//  SecouerDes
//
//  Created by Philippe MICHEL on 05/11/2020.
//

import Foundation
// class MecaniqueDe
class MecaniqueDe {
    
    // retourn un chiffre entre 1 et 6
    func faceAleatoire() -> String {
        let aleatoire = Int(arc4random_uniform(6)) + 1
        let aleatoireString = String(aleatoire)
        return aleatoireString
    }
}
