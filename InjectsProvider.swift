//
//  InjectsProvider.swift
//  Injections
//
//  Created by Мария on 29.08.2023.
//

import Foundation


struct Medicine {
    let medID: Int
    let image: String
    var textName: String

}

public class InjectsProvider {
    static func getMedicine() -> [Medicine] {
        [
            Medicine(
                medID: 0,
                image: "hand",
                textName: "Инфибета"
            ),

            Medicine(
                medID: 0,
                image: "hear",
                textName: "Копаксон"
            ),

            Medicine(
                medID: 0,
                image: "shoeprints",
                textName: "Эумилео"
            )
        ]
    }
}

