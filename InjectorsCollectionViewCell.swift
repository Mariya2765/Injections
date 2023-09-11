//
//  InjectorsCollectionViewCell.swift
//  Injections
//
//  Created by Мария on 11.09.2023.
//

import Foundation
import UIKit
class InjectorsCollectionViewCell: UICollectionViewCell {




    static let reusebleID = "collection ID"

    private let injectLabel: UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 17, weight: .black)
        text.textColor = .black
//        text.text = "Инфибета"
        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let injectImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        return image
    }()


    private let colorView: UIView = {
        let color = UIView()
        color.backgroundColor = UIColor(red: 0.98, green: 0.79, blue: 0.60, alpha: 0.50)
        color.translatesAutoresizingMaskIntoConstraints = false
        color.layer.cornerRadius = 15
        color.layer.masksToBounds = true
        return color
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)

        setUpMyCell()
        addConstraints()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10
    }

    func setUpMyCell() {

        contentView.addSubview(colorView)
        colorView.addSubview(injectLabel)
        colorView.addSubview(injectImageView)


    }

    func addConstraints() {
        NSLayoutConstraint.activate([

            colorView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),

            injectImageView.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 20),
            injectImageView.bottomAnchor.constraint(equalTo: colorView.bottomAnchor, constant: -20),
            injectImageView.leadingAnchor.constraint(equalTo: colorView.leadingAnchor, constant: 20),
            injectImageView.heightAnchor.constraint(equalToConstant: 50),
            injectImageView.widthAnchor.constraint(equalTo: injectImageView.heightAnchor),

            injectLabel.topAnchor.constraint(equalTo:  injectImageView.topAnchor),
            injectLabel.leadingAnchor.constraint(equalTo: injectImageView.trailingAnchor, constant: 15),
            injectLabel.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: -15),


        ])
    }



    func configure(injects: Medicine) {
    

        injectLabel.text = injects.textName
        injectImageView.image = UIImage(named: injects.image)
//        cityImageView.image = UIImage(named: city.image)
//        playgroundsAmountLabel.text = "Детских площадок: \(city.playgrounds)"


    }
}
