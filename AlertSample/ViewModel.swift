//
//  ViewModel.swift
//  AlertSample
//
//  Created by Isa Aliev on 10.10.2018.
//  Copyright © 2018 IsaAliev. All rights reserved.
//

import Foundation
import Bond

class ViewModel: AlertPresentableViewModel {
    var alertModel = Observable<AlertModel?>(nil)
    
    func setup() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.alertModel.value = AlertModel(actionModels: [AlertModel.ActionModel.init(title: "OK", style: .default, handler: nil)], title: "Alert example", message: "That's our easy alert.", prefferedStyle: .alert)
        }
    }
}
