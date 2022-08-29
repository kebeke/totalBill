//
//  TipsView.swift
//  totalBill
//
//  Created by Johnny Bravo on 29/08/2022.
//

import UIKit

class TipsView: UIView {
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "Tips"
        label.textColor = #colorLiteral(red: 0.2454476058, green: 0.2894899547, blue: 0.3496131301, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(titleLable)
        addSubview(collectionView)
        collectionView.register(TipsCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
    }
    
    func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension TipsView: UICollectionViewDataSource {
   
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TipsCollectionViewCell else {
        return UICollectionViewCell()
    }
    
    return cell
}
}

extension TipsView: UICollectionViewDelegate {
    
}


extension TipsView {
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
        
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            collectionView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 2),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            collectionView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
}
