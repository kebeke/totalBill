//
//  ViewController.swift
//  totalBill
//
//  Created by Johnny Bravo on 24/08/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionLable: UILabel = {
        let label = UILabel()
        label.text = "Enter the invoice amount and click \"Calculate\""
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        label.numberOfLines = 2
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        
    }

    func setupViews() {
        view.backgroundColor = #colorLiteral(red: 0.9813231826, green: 0.9813460708, blue: 0.9813337922, alpha: 1)
        
        view.addSubview(titleLable)
        view.addSubview(logoImageView)
        view.addSubview(descriptionLable)
    }
    

}

extension MainViewController {
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 10),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            descriptionLable.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 15),
            descriptionLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            
        ])
    }
}
