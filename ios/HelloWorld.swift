//
//  HelloWorld.swift
//  native_bridge
//
//  Created by Raphael Freitas da Silva on 22/02/22.
//

import Foundation
import UIKit

@objc(HelloWorld)

class HelloWorld: NSObject, RCTBridgeModule{
  
  static func moduleName() -> String! {
    return "HelloWorld";
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true;
  }

  @objc
  func ShowMessage(_ message: NSString, duration: Double) -> Void {
    let alert = UIAlertController(title:nil, message: message as String, preferredStyle: .alert);
    
    let seconds: Double = duration;
    
    alert.view.backgroundColor = .black
    alert.view.alpha = 0.5
    alert.view.layer.cornerRadius = 14
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds, execute: {
      alert.dismiss(animated: true, completion: nil);
    })
  }
}
