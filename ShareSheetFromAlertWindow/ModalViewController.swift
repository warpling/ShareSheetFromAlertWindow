//
//  ModalViewController.swift
//  ShareSheetFromAlertWindow
//
//  Created by Ryan McLeod on 11/27/17.
//  Copyright © 2017 Ryan McLeod. All rights reserved.
//

import UIKit

@objc class ModalViewController : UIViewController {

    var presentingWindow = UIWindow()
    let hideWindowButton = UIButton(type: .custom)
    var shareButton = UIButton(type: .custom)

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        presentingWindow.frame = view.bounds
        presentingWindow.windowLevel = UIWindowLevelNormal
        presentingWindow.backgroundColor = .clear
        presentingWindow.rootViewController = self
        presentingWindow.isHidden = false
        presentingWindow.makeKeyAndVisible()

        hideWindowButton.setTitle("hide UIWindow", for: .normal)
        hideWindowButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        hideWindowButton.sizeToFit()
        hideWindowButton.frame.origin = CGPoint(x: 20, y: 50)
        hideWindowButton.addTarget(self, action: #selector(hideWindow), for: .touchUpInside)
        view.addSubview(hideWindowButton)

        shareButton.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 300)
        shareButton.titleLabel?.numberOfLines = 0
        shareButton.setTitle("This is the modal UIWindow\n\n1) Tap to Share from floating UIWindow\n2) Share to iMessage\n3) Observe if text field is visible.", for: .normal)
        shareButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)

        shareButton.center = view.center
        shareButton.addTarget(self, action: #selector(share), for: .touchUpInside)
        view.addSubview(shareButton)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1).withAlphaComponent(0.75)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @objc public func showWindowAtNormal() {
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).withAlphaComponent(0.9)
        presentingWindow.windowLevel = UIWindowLevelNormal + 1
        presentingWindow.isHidden = false
    }

    @objc public func showWindowAtAlert() {
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).withAlphaComponent(0.9)
        presentingWindow.windowLevel = UIWindowLevelAlert - 1
        presentingWindow.isHidden = false
    }

    @objc public func hideWindow() {
        presentingWindow.isHidden = true
    }
}
