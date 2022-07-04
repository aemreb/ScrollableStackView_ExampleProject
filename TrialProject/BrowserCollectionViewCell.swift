//
//  BrowserCollectionViewCell.swift
//  TrialProject
//
//  Created by Emre Boyacı on 4.07.2022.
//

import UIKit
import ScrollableStackView

class BrowserCollectionViewCell: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews() {
        let scrollableStackView: ScrollableStackView = ScrollableStackView(frame: CGRect(x: 0.0, y: 0.0, width: self.frame.width, height: self.frame.height))
        self.addSubview(scrollableStackView)
        for _ in 0...2 {
            //Test values
            scrollableStackView.addCardView(image: UIImage(named: "cat")!, title: "Testing Title", memberCount: 5, privacy: Utilities.PrivacyState(rawValue: "DEBUG")!, detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis porttitor erat. Maecenas mollis sem odio, sit amet placerat velit sollicitudin eget. In nisl dolor, lacinia vitae vehicula vel, sodales mollis orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis porttitor erat. Maecenas mollis sem odio, sit amet placerat velit sollicitudin eget. In nisl dolor, lacinia vitae vehicula vel, sodales mollis orci.")
            scrollableStackView.addCompactCardView(image: UIImage(named: "cat")!, title: "Testing Title 2", memberCount: 5, privacy: .pub)
        }
    }
}
