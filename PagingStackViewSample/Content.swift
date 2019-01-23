//
//  Content.swift
//  PagingStackViewSample
//
//  Created by Yutaro Muta on 2019/01/23.
//  Copyright © 2019 yutailang0119. All rights reserved.
//

import UIKit

enum Content: CaseIterable {
    case a
    case b
    case c
    case d

    private var text: String {
        switch self {
        case .a:
            return "A"
        case .b:
            return "B"
        case .c:
            return "C"
        case .d:
            return "D"
        }
    }

    private var color: UIColor {
        switch self {
        case .a:
            return .red
        case .b:
            return .blue
        case .c:
            return .cyan
        case .d:
            return .purple
        }
    }

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let label = UILabel(frame: viewController.view.frame)
        label.text = text
        label.font = UIFont.systemFont(ofSize: 50.0)
        label.textAlignment = .center
        viewController.view.addSubview(label)
        NSLayoutConstraint.activate([
            viewController.view.topAnchor.constraint(equalTo: label.topAnchor),
            viewController.view.bottomAnchor.constraint(equalTo: label.bottomAnchor),
            viewController.view.leadingAnchor.constraint(equalTo: label.leadingAnchor),
            viewController.view.trailingAnchor.constraint(equalTo: label.trailingAnchor),
            ])
        viewController.view.backgroundColor = color
        return viewController
    }

}
