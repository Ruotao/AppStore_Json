//
//  SearchResultCell.swift
//  AppStore_Json
//
//  Created by Eddie on 2021/1/8.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        return iv
    }()
    
    let nameLable: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = "App Name"
        return label
    }()
    let typeLable: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = "Photo & Video"
        return label
    }()
    let ratingLable: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = "9.2M"
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true

        return button
    }()
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let labelStackView = UIStackView(arrangedSubviews: [
        nameLable,typeLable,ratingLable
        ])
        labelStackView.axis = .vertical
        
//        labelStackView.alignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [
        imageView,
        labelStackView,
        getButton
        ])
        stackView.alignment = .center
       
        stackView.spacing = 12
        
        addSubview(stackView)
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
//        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
