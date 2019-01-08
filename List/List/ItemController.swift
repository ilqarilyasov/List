//
//  ItemController.swift
//  List
//
//  Created by Ilgar Ilyasov on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ItemController {
    var items = [String]()
    
    func add(_ item: String) {
        items.append(item)
    }
    
    func resetItems() {
        items.removeAll()
    }
}
