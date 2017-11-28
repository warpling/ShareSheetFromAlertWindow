//
//  ModalViewController.swift
//  ShareSheetFromAlertWindow
//
//  Created by Ryan McLeod on 11/27/17.
//  Copyright © 2017 Ryan McLeod. All rights reserved.
//

import UIKit

class ModalViewController : UIViewController {

    var presentingWindow = UIWindow()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        presentingWindow.frame = UIScreen.main.bounds
        presentingWindow.windowLevel = UIWindowLevelAlert
        presentingWindow.backgroundColor = .clear
        presentingWindow.rootViewController = self
        presentingWindow.isHidden = false
        presentingWindow.makeKeyAndVisible()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).withAlphaComponent(0.5)
    }
}
