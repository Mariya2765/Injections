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
    private var medID: Int?

    private let injectLabel: UILabel = {
        let text = UILabel()
        text.font = .systemFont(ofSize: 17, weight: .black)
        text.textColor = .black
//        text.text = "Инфибета"
//        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    private let timeInjectLabel: UILabel = {
        let timeText = UILabel()
        timeText.font = .systemFont(ofSize: 14, weight: .light)
        timeText.textColor = .black

        timeText.translatesAutoresizingMaskIntoConstraints = false
        return timeText

    }()

    private let injectImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
//        image.backgroundColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        image.isUserInteractionEnabled = true
        image.clipsToBounds = false

        return image
    }()

    private var timerLabel: UILabel = {
        let timer = UILabel()
        timer.font = .systemFont(ofSize: 14, weight: .light)
        timer.textColor = .black
        timer.translatesAutoresizingMaskIntoConstraints = false

        return timer
    }()


//    private let colorView: UIView = {
//        let color = UIView()
//        color.backgroundColor = UIColor(red: 0.75, green: 0.38, blue: 0.33, alpha: 0.60)
//        color.translatesAutoresizingMaskIntoConstraints = false
//        color.layer.cornerRadius = 1
//        color.layer.masksToBounds = true
//        return color
//    }()


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
        self.layer.cornerRadius = 5
    }

    func setUpMyCell() {

//        contentView.addSubview(colorView)
//        colorView.addSubview(injectLabel)
//        colorView.addSubview(injectImageView)
        contentView.addSubview(injectLabel)

        contentView.addSubview(injectImageView)
        contentView.addSubview(timeInjectLabel)
        contentView.addSubview(timerLabel)

    }

    func addConstraints() {
        NSLayoutConstraint.activate([

//            colorView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
//            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
//            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

            injectImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),

            injectImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            injectImageView.heightAnchor.constraint(equalToConstant: 80),
            injectImageView.widthAnchor.constraint(equalTo: injectImageView.heightAnchor),


            injectLabel.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 20),
            injectLabel.leadingAnchor.constraint(equalTo: injectImageView.trailingAnchor, constant: 15),
            injectLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            injectLabel.bottomAnchor.constraint(equalTo: injectImageView.bottomAnchor, constant: -40),


            timeInjectLabel.topAnchor.constraint(equalTo:  injectLabel.bottomAnchor, constant: 3),
            timeInjectLabel.leadingAnchor.constraint(equalTo: injectImageView.trailingAnchor, constant: 15),
            timeInjectLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            timeInjectLabel.bottomAnchor.constraint(equalTo: injectImageView.bottomAnchor, constant: -10),

            timerLabel.topAnchor.constraint(equalTo:  timeInjectLabel.bottomAnchor, constant: 3),
            timerLabel.leadingAnchor.constraint(equalTo: injectImageView.trailingAnchor, constant: 15),
            timerLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            timerLabel.bottomAnchor.constraint(equalTo: injectImageView.bottomAnchor, constant: 20)

        ])
    }



    func configure(injects: Medicine) {
        self.medID = injects.medID

        injectLabel.text = injects.textName
        injectImageView.image = UIImage(named: injects.image)
        timeInjectLabel.text = injects.time
        timerLabel.text = "Таймер"

    }
}

