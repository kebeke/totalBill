//
//  TipsCollectionViewCell.swift
//  totalBill
//
//  Created by Johnny Bravo on 29/08/2022.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9561620355, green: 0.9591525197, blue: 0.953096807, alpha: 1)
        
    }
}
