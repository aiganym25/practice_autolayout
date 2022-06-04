//
//  PageCell.swift
//  training_autolayout
//
//  Created by Айганым Оспан on 03.06.2022.
//

import UIKit

class PageCell: UICollectionViewCell { //view, responsible for presenting all data of particular model
    
    private let imageView = UIImageView()
    private let descriptionView =  UITextView()
    
    var page : Page? {
        didSet{
            guard let unwrapped = page else {return}
            imageView.image = UIImage(named: unwrapped.imageName)
            
            let attributedText = NSMutableAttributedString(string: unwrapped.headerText, attributes:
                                                            [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
            
            attributedText.append(NSAttributedString(string: "\n\n\n\(unwrapped.descriptionText)", attributes:           [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                                                                                                                          NSAttributedString.Key.foregroundColor : UIColor.darkGray]))
                        
            descriptionView.attributedText = attributedText
            descriptionView.textAlignment = .center
            
            
        }
    }
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
    
        setupLayout()
    }
    
    
    
    private func setupLayout() {
        
        let container = UIView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        container.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(container)
        container.addSubview(imageView)
        addSubview(descriptionView)
        
        NSLayoutConstraint.activate ([
            
            container.topAnchor.constraint(equalTo: topAnchor),
            container.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4),
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            
            imageView.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: container.topAnchor, constant: 100),
            imageView.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.7),
            imageView.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.7),
            
            
            
            descriptionView.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 80),
            descriptionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            descriptionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            descriptionView.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
