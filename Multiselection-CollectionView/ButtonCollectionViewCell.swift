//
//  ButtonCollectionViewCell.swift
//  Multiselection-CollectionView
//
//  Created by Bryan Sánchez Peralta on 28/03/23.
//

import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var button: UIButton!
    
    @IBAction func onCLick(_ sender: Any) {
        button.backgroundColor = UIColor.orange
    }
    override func layoutSubviews() {
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.orange.cgColor
        button.layer.cornerRadius = 6
        
        super.layoutSubviews()
    }
}
