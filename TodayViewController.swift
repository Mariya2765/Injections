//
//  TodayViewController.swift
//  Injections
//
//  Created by Мария on 22.08.2023.
//

import Foundation
import UIKit
class TodayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Сегодня"

//        view.addSubview(tableView)

//        self.tableView.register(CitiesTableViewCell.self, forCellReuseIdentifier: Constants.reuseIdentifire)


        let navBar = self.navigationController!.navigationBar
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.configureWithOpaqueBackground()

        standardAppearance.backgroundColor = UIColor(red: 0.67, green: 0.79, blue: 0.74, alpha: 1.50)
        navBar.standardAppearance = standardAppearance
        navBar.scrollEdgeAppearance = standardAppearance

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addHabit))

        // цвет кнопки добавления
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black


    }

    //кнопка добавления города
    @objc private func addHabit() {

    }

}

