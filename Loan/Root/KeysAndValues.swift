//
//  KeysAndValues.swift
//  MdShop
//
//  Created by Pruthvi  on 11/09/18.
//  Copyright © 2018 Fanruan. All rights reserved.
//

import Foundation
import UIKit

let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height
let kHomeContentHeight = UIScreen.main.bounds.height - 49
let homeBaseUrl = "http://117.185.95.186:88/"
let themeColor = UIColor(red: 231/255, green: 78/255, blue: 70/255, alpha: 1.0)
let efColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
let textAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]


func defaultFont(size: CGFloat) -> UIFont {
    guard let font = UIFont(name: "PingFang SC", size: size) else {
        return UIFont.systemFont(ofSize: size)
    }
    return font
}

class ProgressHUD: NSObject {
    static func showSuccess(message: String) -> () {
        SwiftNotice.showNoticeWithText(.success, text: message, autoClear: true, autoClearTime: 3)
    }
    static func showMessage(message: String) -> () {
        UIApplication.shared.keyWindow?.showMessage(message, interval: 2, position: "center" as AnyObject)
    }
    static func showLoading(toView: UIView, message: String = "努力加载中...") -> () {
        toView.showLoadingTilteActivity(message, position: "center" as AnyObject?)
    }
    static func hideLoading(toView: UIView) -> () {
        toView.hideActivity()
    }
    static func showNoticeOnStatusBar(message: String) {
        SwiftNotice.noticeOnStatusBar(message, autoClear: true, autoClearTime: 3)
    }
    
    
}
