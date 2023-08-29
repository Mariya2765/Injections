//
//  InjectorsTableViewCell.swift
//  Injections
//
//  Created by Мария on 29.08.2023.
//

import Foundation
import UIKit

class InjectorsTableViewCell: UITableViewCell {

    private var injectID: Int?

    private let injectLabel: UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 17, weight: .black)
        text.textColor = .black
//        text.text = "Инфибета"
        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let colorView: UIView = {
        let color = UIView()
        color.backgroundColor = UIColor(red: 0.98, green: 0.79, blue: 0.60, alpha: 0.50)
        color.translatesAutoresizingMaskIntoConstraints = false
        color.layer.cornerRadius = 15
        color.layer.masksToBounds = true
        return color
    }()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)

        setUpMyCell()
        addConstraints()
        selectionStyle = .none

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUpMyCell() {

        contentView.addSubview(colorView)
        colorView.addSubview(injectLabel)
//        colorView.addSubview(cityImageView)
//        colorView.addSubview(playgroundsAmountLabel)
//        contentView.addSubview(injectLabel)
//        contentView.addSubview(cityImageView)
//        contentView.addSubview(playgroundsAmountLabel)
//        contentView.backgroundColor = .blue

    }

    func addConstraints() {
        NSLayoutConstraint.activate([

            colorView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)

//            cityImageView.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 20),
//            cityImageView.bottomAnchor.constraint(equalTo: colorView.bottomAnchor, constant: -20),
//            cityImageView.leadingAnchor.constraint(equalTo: colorView.leadingAnchor, constant: 20),
//            cityImageView.heightAnchor.constraint(equalToConstant: 50),
//            cityImageView.widthAnchor.constraint(equalTo: cityImageView.heightAnchor),
//
//            cityLabel.topAnchor.constraint(equalTo:  cityImageView.topAnchor),
//            cityLabel.leadingAnchor.constraint(equalTo: cityImageView.trailingAnchor, constant: 15),
//            cityLabel.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: -15),


//            playgroundsAmountLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor),
//            playgroundsAmountLabel.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: -15),
//            playgroundsAmountLabel.leadingAnchor.constraint(equalTo: cityImageView.trailingAnchor, constant: 15),
//            playgroundsAmountLabel.bottomAnchor.constraint(equalTo: cityImageView.bottomAnchor)
        ])
    }



    func configure(injects: Medicine) {
        self.injectID = injects.medID

        injectLabel.text = injects.textName
//        cityImageView.image = UIImage(named: city.image)
//        playgroundsAmountLabel.text = "Детских площадок: \(city.playgrounds)"


    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

//}

}
