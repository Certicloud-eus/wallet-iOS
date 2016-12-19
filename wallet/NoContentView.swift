//
//  NoContentView.swift
//  wallet
//
//  Created by Chris Downie on 12/19/16.
//  Copyright © 2016 Learning Machine, Inc. All rights reserved.
//

import UIKit

class NoContentView: UIView {
    var title : String? = "Dummy Title"
    var subtitle : String? = "This is a dummy subtitle below the title."
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        backgroundColor = Colors.baseColor
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = Colors.disabledTextColor
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.textColor = Colors.disabledTextColor
        subtitleLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        subtitleLabel.numberOfLines = 0
        
        let stack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .center
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stack)
        
        let constraints = [
            NSLayoutConstraint(item: stack, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: stack, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    

}
