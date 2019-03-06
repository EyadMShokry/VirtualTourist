//
//  ViewController+Extension.swift
//  VirtualTourist
//
//  Created by Eyad Shokry on 2/14/19.
//  Copyright © 2019 Eyad Shokry. All rights reserved.
//

import UIKit

extension UIViewController {
    
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func save() {
        do {
            try CoreDataStack.shared().saveContext()
        } catch {
            showInfo(withTitle: "Error", withMessage: "Error while saving Pin location: \(error)")
        }
    }
    
    func showInfo(withTitle: String = "Info", withMessage: String, action: (() -> Void)? = nil) {
        performUIUpdatesOnMain {
            let ac = UIAlertController(title: withTitle, message: withMessage, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alertAction) in
                action?()
            }))
            self.present(ac, animated: true)
        }
    }
    
    func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
        DispatchQueue.main.async {
            updates()
        }
    }

}
