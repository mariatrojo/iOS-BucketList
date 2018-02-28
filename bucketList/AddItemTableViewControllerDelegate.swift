//
//  AddItemTableViewControllerDelegate.swift
//  bucketList
//
//  Created by Maria Teresa Rojo on 1/16/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
