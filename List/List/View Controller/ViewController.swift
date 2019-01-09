//
//  ViewController.swift
//  List
//
//  Created by Ilgar Ilyasov on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let itemController = ItemController()

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        label.text = nil
    }

    @IBAction func shouldAdd(_ sender: UIButton) {
        let text = textField.text ?? ""
        
        if !text.isEmpty {
            itemController.add(text)
        }
        
        let joined = itemController.items.map({ $0.name })
        label.text = joined.joined(separator: "\n")
    }
    
    @IBAction func shouldReset(_ sender: UIButton) {
        itemController.resetItems()
        updateViews()
    }
}

