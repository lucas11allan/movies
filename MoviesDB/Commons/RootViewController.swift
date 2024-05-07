//
//  RootViewController.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import UIKit

class RootViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override var childForStatusBarStyle: UIViewController? {
        presentedViewController ?? visibleViewController
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        (presentedViewController ?? visibleViewController)?.preferredStatusBarStyle ?? .darkContent
    }

}
