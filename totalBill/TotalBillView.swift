//
//  TotalBillView.swift
//  totalBill
//
//  Created by Johnny Bravo on 26/08/2022.
//

import UIKit

class TotalBillView: UIView {
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = #colorLiteral(red: 0.2454476058, green: 0.2894899547, blue: 0.3496131301, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let summTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9561620355, green: 0.9591525197, blue: 0.953096807, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = .black
        textField.font = UIFont(name: "Avenir Next Bold", size: 48)
        textField.textAlignment = .center
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        addSubview(summTextField)
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        
            summTextField.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 2),
            summTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  0),
            summTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            summTextField.heightAnchor.constraint(equalToConstant: 100)
        
        ])
}
    
}
