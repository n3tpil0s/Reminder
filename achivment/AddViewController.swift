//
//  AddViewController.swift
//  achivment
//
//  Created by netpilot on 20/04/2020.
//  Copyright © 2020 netpilot. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var bodyField: UITextField!
    @IBOutlet var dateField: UIDatePicker!
    public var completion:((String,String,Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapButton))
        // Do any additional setup after loading the view.
    }
    @objc func didTapButton(){
        if let titleText = titleField.text, !titleText.isEmpty,
            let bodyText = bodyField.text, !bodyText.isEmpty {
            let mainDate = dateField.date
             
            completion?(titleText,bodyText,mainDate)
        }
         
    }


}
