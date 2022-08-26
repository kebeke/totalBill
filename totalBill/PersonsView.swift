//
//  PersonsView.swift
//  totalBill
//
//  Created by Johnny Bravo on 26/08/2022.
//

import UIKit

class PersonsView: UIView {
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = #colorLiteral(red: 0.2454476058, green: 0.2894899547, blue: 0.3496131301, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backgroundGrayView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9561620355, green: 0.9591525197, blue: 0.953096807, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.tintColor = #colorLiteral(red: 0.4510036111, green: 0.4966586828, blue: 0.5633248091, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 80)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.tintColor = #colorLiteral(red: 0.4510036111, green: 0.4966586828, blue: 0.5633248091, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let counterLable: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 48)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been impemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        
        addSubview(titleLable)
        addSubview(backgroundGrayView)
        backgroundGrayView.addSubview(minusButton)
        backgroundGrayView.addSubview(plusButton)
        backgroundGrayView.addSubview(counterLable)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        
            backgroundGrayView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 2),
            backgroundGrayView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundGrayView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundGrayView.heightAnchor.constraint(equalToConstant: 100),
            
            minusButton.topAnchor.constraint(equalTo: backgroundGrayView.topAnchor, constant: 0),
            minusButton.leadingAnchor.constraint(equalTo: backgroundGrayView.leadingAnchor, constant: 0),
            minusButton.heightAnchor.constraint(equalTo: backgroundGrayView.heightAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: 80),
            
            plusButton.topAnchor.constraint(equalTo: backgroundGrayView.topAnchor, constant: 0),
            plusButton.trailingAnchor.constraint(equalTo: backgroundGrayView.trailingAnchor, constant: 0),
            plusButton.heightAnchor.constraint(equalTo: backgroundGrayView.heightAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 80),
            
            counterLable.centerXAnchor.constraint(equalTo: backgroundGrayView.centerXAnchor),
            counterLable.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 10),
            counterLable.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: -10)
        
        ])
}
    
}
