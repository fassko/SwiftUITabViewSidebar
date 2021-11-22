//
//  UIDevice+Extensions.swift
//  SwiftUITabViewSidebar
//
//  Created by Kristaps Grinbergs on 21/11/2021.
//

import UIKit

extension UIDevice {
  
  static var idiom: UIUserInterfaceIdiom {
    UIDevice.current.userInterfaceIdiom
  }
  
  static var isIpad: Bool {
    idiom == .pad
  }
  
  static var isiPhone: Bool {
    idiom == .phone
  }
}
