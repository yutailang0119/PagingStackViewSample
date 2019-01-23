//
//  ViewController.swift
//  PagingStackViewSample
//
//  Created by Yutaro Muta on 2019/01/23.
//  Copyright © 2019 yutailang0119. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var stackView: UIStackView!

    private let contents: [Content] = Content.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
        contents.forEach { content in
            let viewController = content.makeViewController()
            viewController.view.frame = stackView.frame
            stackView.addArrangedSubview(viewController.view)
            viewController.view.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        }
    }

}

