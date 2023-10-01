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
    var time: String

}

public class InjectsProvider {
    static func getMedicine() -> [Medicine] {
        [
            Medicine(
                medID: 0,
                image: "hand",
                textName: "Инфибета",
                time: "Время укола 22.00"
            ),

            Medicine(
                medID: 1,
                image: "hear",
                textName: "Копаксон",
                time: "Время укола 22.00"
            ),

            Medicine(
                medID: 2,
                image: "shoeprints",
                textName: "Эумилео",
                time: "Время укола 22.00"
            )
        ]
    }
}

