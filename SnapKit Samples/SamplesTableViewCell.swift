//
//  SamplesTableViewCell.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/15/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit
import SnapKit

class SamplesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(sample: Sample) {
        
        accessoryType = .DisclosureIndicator
        
        let nameLabel = UILabel()
        nameLabel.text = sample.name
        nameLabel.textColor = tintColor
        addSubview(nameLabel)
        nameLabel.snp_makeConstraints { make in
            make.width.equalTo(snp_width).offset(-32)
            make.left.equalTo(16)
            make.top.equalTo(20)
        }
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = sample.description
        descriptionLabel.font = UIFont.systemFontOfSize(12)
        descriptionLabel.numberOfLines = 2
        descriptionLabel.setLineHeight(5)
        addSubview(descriptionLabel)
        descriptionLabel.snp_makeConstraints { make in
            make.width.equalTo(nameLabel.snp_width)
            make.left.equalTo(nameLabel.snp_left)
            make.bottom.equalTo(snp_bottom).offset(-16)
        }
        
    }

}

extension UILabel {
    func setLineHeight(lineHeight: CGFloat) {
        let text = self.text
        if let text = text {
            let attributeString = NSMutableAttributedString(string: text)
            let style = NSMutableParagraphStyle()
            
            style.lineSpacing = lineHeight
            attributeString.addAttribute(NSParagraphStyleAttributeName, value: style, range: NSMakeRange(0, text.characters.count))
            self.attributedText = attributeString
        }
    }
}
