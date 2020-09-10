//
//  UIViewControllerExtensions.swift
//  Pokemon app
//
//  Created by Scizor on 10/09/20.
//  Copyright © 2020 Scizor. All rights reserved.
//

import UIKit

extension UIViewController {
    func setupTitle(_ title: String?, color: UIColor = .white) {
        let text = UILabel()
        text.font = UIFont.boldSystemFont(ofSize: 24)
        text.text = title?.capitalized
        text.textColor = color
        self.navigationItem.titleView = text
    }
}

