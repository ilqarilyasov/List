//
//  ItemController.swift
//  List
//
//  Created by Ilgar Ilyasov on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ItemController {
    
    var items = [Item]()
    
    func add(_ item: String) {
        let newItem = Item(name: item)
        items.append(newItem)
    }
    
    func resetItems() {
        items.removeAll()
    }
}
