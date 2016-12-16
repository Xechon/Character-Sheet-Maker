//
//  FileBase.swift
//  Character Sheet Maker
//
//  Created by Programmer on 12/15/16.
//  Copyright © 2016 Joanie's Fish Daycare. All rights reserved.
//

import UIKit

class FileBase: NSObject, NSCoding {
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("meals")
    
    enum FileType : String {
        case template = "Template"
        case sheet = "Sheet"
        case folder = "Folder"
    }
    
    var fileType: FileType
    var title: String
    var elements = [UIView]()
    
    struct PropertyKey {
        static let fileTypeKey = "file type"
        static let titleKey = "title"
        static let elementsKey = "elements"
    }
    
    init?(fileType: FileType, title: String, elements: UIView...) {
        self.fileType = fileType
        self.title = title
        for i in elements {self.elements += [i]}
    }
    
    init?(fileType: FileType, title: String, elements: [UIView]) {
        self.fileType = fileType
        self.title = title
        self.elements += elements
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(fileType.rawValue, forKey: PropertyKey.fileTypeKey)
        aCoder.encodeObject(title, forKey: PropertyKey.titleKey)
        aCoder.encodeObject(elements, forKey: PropertyKey.elementsKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(fileType: aDecoder.decodeObjectForKey(PropertyKey.fileTypeKey) as! FileType, title: aDecoder.decodeObjectForKey(PropertyKey.titleKey) as! String, elements: aDecoder.decodeObjectForKey(PropertyKey.elementsKey) as! [UIView])
    }
}
