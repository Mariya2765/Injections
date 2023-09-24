//
//  TodayViewController.swift
//  Injections
//
//  Created by Мария on 22.08.2023.
//
// самый первый экран, который появляется поле загрузки приложения. Отображает календарь, текущий день, пишет дату вверху
import Foundation
import UIKit
class TodayViewController: UIViewController {

    private enum Constants {
        static let reuseIdentifier = "collection_cell"
        static let collectionID = "collectID"
    }


    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        addConstraintsOfCollectionView()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(red: 0.67, green: 0.79, blue: 0.74, alpha: 1.5)
        collectionView.showsVerticalScrollIndicator = true
        collectionView.register(InjectorsCollectionViewCell.self, forCellWithReuseIdentifier: Constants.reuseIdentifier)
//        collectionView.register(SaveInjectCollectionViewCell.self, forCellWithReuseIdentifier: Constants.collectionID)

        navigationItem.title = "Сегодня"

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewInject))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 161/255.0, green: 22/255.0, blue: 204/255.0, alpha: 1.0)

//        HabitStoreObserver.shared.addObserver(self)
        collectionView.reloadData()
    }

    private  func addConstraintsOfCollectionView() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    //кнопка "добавить инъекцию"
    @objc private func addNewInject() {
//        let habitVc = HabitViewController()
//        let habitNavContr = UINavigationController(rootViewController: habitVc)
//
//        let appearanceNavContr = UINavigationBarAppearance()
//        appearanceNavContr.configureWithDefaultBackground()
//        habitNavContr.navigationBar.standardAppearance = appearanceNavContr
//        habitNavContr.navigationBar.scrollEdgeAppearance = appearanceNavContr
//        habitNavContr.navigationBar.prefersLargeTitles = false
//        habitNavContr.navigationBar.backgroundColor = .white
    }

//    navigationController?.present(habitNavContr, animated: true)



}

extension TodayViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
// количество инъекций в день
        return 1

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.reuseIdentifier, for: indexPath) as! InjectorsCollectionViewCell
        cell.backgroundColor = UIColor(red: 0.96, green: 0.75, blue: 0.67, alpha: 1.00)
            return cell

        }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        sizeOfCollectionView()
//        CGSize(width: UIScreen.main.bounds.width - 48/3, height: 100)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        40
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(
            top: 25,
            left: 8,
            bottom: 8,
            right: 8
        )
    }

    private func sizeOfCollectionView() -> CGSize {
//        let numberOfCells: CGFloat = 1
//        let offsetBetweenCells: CGFloat = 8

        let offsetFromCellToScreen: CGFloat = 20
        let cellHeight: CGFloat = 100
        let screenWidth = UIScreen.main.bounds.width
//        let side = (screenWidth - offsetBetweenCells * (numberOfCells - 1) - offsetFromCellToScreen * 2) / numberOfCells
        let cellWidth = screenWidth - offsetFromCellToScreen * 2
        let sizeOfCell = CGSize(width: cellWidth, height: cellHeight)
        return sizeOfCell
    }

//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
////            sizeOfCollectionView()
//
//    }
}





//    private enum Constants {
//        static let reuseIdentifire = "cellID"
//    }
//
//    private var injectsArray = InjectsProvider.getMedicine()
////    private let headerView = SearchTableHeaderView()
//
//
//        private lazy var tableView: UITableView = {
//
//            let tableView = UITableView(frame: .zero, style: .plain)
//            tableView.register(InjectorsTableViewCell.self, forCellReuseIdentifier: Constants.reuseIdentifire )
//            tableView.dataSource = self
//            tableView.delegate = self
//            tableView.separatorStyle = .none
//            tableView.translatesAutoresizingMaskIntoConstraints = false
//            return tableView
//        }()
//
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            navigationItem.title = "Сегодня"
//
//            view.addSubview(tableView)
//
//            self.tableView.register(InjectorsTableViewCell.self, forCellReuseIdentifier: Constants.reuseIdentifire)
//
//
//        let navBar = self.navigationController!.navigationBar
//        let standardAppearance = UINavigationBarAppearance()
//        standardAppearance.configureWithOpaqueBackground()
//        standardAppearance.backgroundColor = UIColor(red: 0.67, green: 0.79, blue: 0.74, alpha: 1.5)
//
//        navBar.standardAppearance = standardAppearance
//        navBar.scrollEdgeAppearance = standardAppearance
//        navigationItem.titleView?.isHidden = false
//
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addMed))
//
//        // цвет кнопки добавления
//        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
//            addConstraintsOfTableView()
//
//    }
//
//    //кнопка добавления инъекции
//    @objc private func addMed() {
//
//    }
//        private func addConstraintsOfTableView() {
//            NSLayoutConstraint.activate([
//                tableView.topAnchor.constraint(equalTo: view.topAnchor),
//                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//            ])
//        }
//
//    }
//
//    // UIDataSource
//    extension TodayViewController: UITableViewDataSource, UITableViewDelegate {
//
//
//        func numberOfSections(in tableView: UITableView) -> Int {
//            1
//        }
//
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//                return injectsArray.count
//
//        }
//
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.reuseIdentifire, for: indexPath) as! InjectorsTableViewCell
//            let injects = injectsArray[indexPath.row]
//            cell.configure(injects: injects)
//
//
//
//            return cell
//        }
//
//
//}
//
