//
//  AlertModel.swift
//  BestLikes
//
//  Created by Isa Aliev on 13.08.2018.
//  Copyright © 2018 Isa Aliev. All rights reserved.
//

import UIKit

struct AlertModel {
    struct ActionModel {
        var title: String?
        var style: UIAlertAction.Style
        var handler: ((UIAlertAction) -> ())?
    }
    
    var actionModels = [ActionModel]()
    var title: String?
    var message: String?
    var prefferedStyle: UIAlertController.Style
}
