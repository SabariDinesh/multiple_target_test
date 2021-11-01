//
//  ViewController.swift
//  multiple_target_test
//
//  Created by sabari-pt4418 on 01/11/21.
//

import UIKit

class ViewController: UIViewController {
    var label = UILabel(frame: CGRect(x: 0, y:0, width: 400, height: 200))
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.center = view.center
        self.label.textColor = .black
        self.label.textAlignment = .center
        
        #if LOCAL
        self.label.text = "this is local debug environment "

        #elseif PROD
        self.label.text = "this is production environment"

        #elseif DEV
        self.label.text = "this is development environment"

        #elseif QA
        self.label.text = "this is QA environment"

        #endif
        
    }


}

