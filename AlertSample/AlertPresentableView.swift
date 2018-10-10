//
//  AlertPresentableView.swift
//  AlertSample
//
//  Created by Isa Aliev on 10.10.2018.
//  Copyright © 2018 IsaAliev. All rights reserved.
//

import UIKit
import Bond

protocol AlertPresentableView {
    associatedtype ModelType: AlertPresentableViewModel
    
    var model: ModelType { get set }
}

extension AlertPresentableView where Self: UIViewController {
    func bindToAlerts() {
        model.alertModel.observeOn(.main).observeNext { [weak self] (model) in
            guard let model = model else {
                return
            }
            
            let alert = AlertBuilder.buildAlertController(for: model)
            self?.present(alert, animated: true, completion: nil)
        }.dispose(in: bag)
    }
}
