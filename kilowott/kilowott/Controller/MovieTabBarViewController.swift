//
//  MovieTabBarViewController.swift
//  kilowott
//
//  Created by Tapan Kumar on 21/10/23.
//

import UIKit

class MovieTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(showOfflineNetworkStatus), name: NSNotification.Name.connectivityStatus, object: nil)
    }
    
    @objc
    func showOfflineNetworkStatus() {
        DispatchQueue.main.async {
            self.view.makeToast("No internet connection")
        }
    }
    
}
