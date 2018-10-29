//
//  HomeTableSectionHeader.swift
//  Loan
//
//  Created by Pruthvi  on 29/10/18.
//  Copyright © 2018 Fanruan. All rights reserved.
//

import UIKit

class HomeTableSectionHeader: UIView {

    class func instanceFromNib() -> UIView{
        return UINib(nibName: "HomeTableSectionHeader", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

}
