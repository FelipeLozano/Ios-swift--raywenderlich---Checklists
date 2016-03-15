//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Felipe Lozano on 14/03/16.
//  Copyright © 2016 FelipeCanayo. All rights reserved.
//

import Foundation
import UIKit
class ChecklistItem {
    var text = ""
    var checked = false
    func toggleChecked(){
        checked = !checked
    }
}