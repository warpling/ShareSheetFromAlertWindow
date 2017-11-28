//
//  ViewController.swift
//  ShareSheetFromAlertWindow
//
//  Created by Ryan McLeod on 11/27/17.
//  Copyright © 2017 Ryan McLeod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let modalVC = ModalViewController()
    let showWindowAtNormalButton = UIButton(type: .custom)
    let showWindowAtAlertButton = UIButton(type: .custom)
    let shareButton = UIButton(type: .custom)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)

        showWindowAtNormalButton.setTitle("Show UIWindow (.normal + 1) level", for: .normal)
        showWindowAtNormalButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        showWindowAtNormalButton.sizeToFit()
        showWindowAtNormalButton.frame.origin = CGPoint(x: 20, y: 60)
        showWindowAtNormalButton.addTarget(modalVC, action: #selector(ModalViewController.showWindowAtNormal), for: .touchUpInside)
        view.addSubview(showWindowAtNormalButton)

        showWindowAtAlertButton.setTitle("Show UIWindow (.alert - 1) level", for: .normal)
        showWindowAtAlertButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        showWindowAtAlertButton.sizeToFit()
        showWindowAtAlertButton.frame.origin = CGPoint(x: 20, y: 120)
        showWindowAtAlertButton.addTarget(modalVC, action: #selector(ModalViewController.showWindowAtAlert), for: .touchUpInside)
        view.addSubview(showWindowAtAlertButton)

        shareButton.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 100)
        shareButton.titleLabel?.numberOfLines = 0
        shareButton.setTitle("This is the base UIWindow\n\n1) Tap to Share from base UIWindow\n2) Share to iMessage\n3) Observe if text field is visible.", for: .normal)
        shareButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        shareButton.center = CGPoint(x: view.center.x, y: view.center.y)
        shareButton.addTarget(self, action: #selector(share), for: .touchUpInside)
        view.addSubview(shareButton)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
