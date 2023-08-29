//
//  TodayViewController.swift
//  Injections
//
//  Created by Мария on 22.08.2023.
//

import Foundation
import UIKit
class TodayViewController: UIViewController {

    private enum Constants {
        static let reuseIdentifire = "cellID"
    }

    private var injectsArray = InjectsProvider.getMedicine()
//    private let headerView = SearchTableHeaderView()


        private lazy var tableView: UITableView = {

            let tableView = UITableView(frame: .zero, style: .plain)
            tableView.register(InjectorsTableViewCell.self, forCellReuseIdentifier: Constants.reuseIdentifire )
            tableView.dataSource = self
            tableView.delegate = self
            tableView.separatorStyle = .none
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
        }()


        override func viewDidLoad() {
            super.viewDidLoad()
            navigationItem.title = "Сегодня"

            view.addSubview(tableView)

            self.tableView.register(InjectorsTableViewCell.self, forCellReuseIdentifier: Constants.reuseIdentifire)


        let navBar = self.navigationController!.navigationBar
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.configureWithOpaqueBackground()
        standardAppearance.backgroundColor = UIColor(red: 0.67, green: 0.79, blue: 0.74, alpha: 1.5)

        navBar.standardAppearance = standardAppearance
        navBar.scrollEdgeAppearance = standardAppearance
        navigationItem.titleView?.isHidden = false

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addMed))

        // цвет кнопки добавления
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
            addConstraintsOfTableView()

    }

    //кнопка добавления инъекции
    @objc private func addMed() {

    }
        private func addConstraintsOfTableView() {
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: view.topAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        }

    }

    // UIDataSource
    extension TodayViewController: UITableViewDataSource, UITableViewDelegate {


        func numberOfSections(in tableView: UITableView) -> Int {
            1
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        if section == 0 {
    //            return 1
    //        } else {
                return injectsArray.count
    //    }
        }


        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.reuseIdentifire, for: indexPath) as! InjectorsTableViewCell
            let injects = injectsArray[indexPath.row]
            cell.configure(injects: injects)

    //        var content = cell.defaultContentConfiguration()
    //        content.text = "Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму: "
    //        cell.contentConfiguration = content

            return cell
        }

//        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//                return .none
//
//        }


}

