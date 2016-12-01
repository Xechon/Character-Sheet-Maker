//
//  Sheet.swift
//  Character Sheet Maker
//
//  Created by Programmer on 12/1/16.
//  Copyright © 2016 Joanie's Fish Daycare. All rights reserved.
//

import UIKit

class Sheet: NSObject, NSCoding {
    var title: String;
    var elements = [UIView]()
    
    struct PropertyKey {
        static let titleKey = "title"
        static let elementsKey = "elements"
    }
    
    init?(title: String, elements: UIView...) {
        self.title = title;
        for i in elements {
            self.elements += [i]
        }
    }
    
    init?(title: String, elements: [UIView]) {
        self.title = title;
        self.elements += elements
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: PropertyKey.titleKey)
        aCoder.encodeObject(elements, forKey: PropertyKey.elementsKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(title: aDecoder.decodeObjectForKey(PropertyKey.titleKey) as! String, elements: aDecoder.decodeObjectForKey(PropertyKey.elementsKey) as! [UIView])
    }
}