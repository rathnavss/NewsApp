//
//  SubredditInfoCell.swift
//  beam
//
//  Created by Powermobile on 17-09-15.
//  Copyright © 2015 Powermobile. All rights reserved.
//

import UIKit

class SubredditInfoCell: BeamTableViewCell {
    
    var rowType: SubredditInfoRowType? {
        didSet {
            self.displayModeDidChange()
        }
    }
    
    override func displayModeDidChange() {
        super.displayModeDidChange()
        
        self.textLabel?.textColor = self.rowType?.textColor
        self.textLabel?.textAlignment = .left
        
        if self.rowType?.isAction == true {
            self.selectionStyle = .none
        } else {
            self.selectionStyle = .default
        }
    }

}
