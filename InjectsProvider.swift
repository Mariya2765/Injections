//
//  InjectsProvider.swift
//  Injections
//
//  Created by Мария on 29.08.2023.
//

import Foundation


struct Medicine {
    let medID: Int
    var textName: String

}

public class InjectsProvider {
    static func getMedicine() -> [Medicine] {
        [
            Medicine(
                medID: 0,
                textName: "Инфибета"
            ),

            Medicine(
                medID: 0,
                textName: "Копаксон"
            ),

            Medicine(
                medID: 0,
                textName: "Эумилео"
            )
        ]
    }
}

