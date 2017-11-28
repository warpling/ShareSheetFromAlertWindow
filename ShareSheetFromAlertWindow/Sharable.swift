//
//  Sharable.swift
//  ShareSheetFromAlertWindow
//
//  Created by Ryan McLeod on 11/27/17.
//  Copyright © 2017 Ryan McLeod. All rights reserved.
//

import UIKit

extension UIViewController {

    @objc func share() {
        let stringProvider = BasicStringProvider(placeholderItem: "I'm being shared from the Alert level UIWindow")
        let activityItems = [stringProvider]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        present(activityVC, animated: true, completion: nil)
    }
}
