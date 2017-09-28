//
//  RatingStarView.swift
//  CustomControl
//
//  Created by Mai Hoang Anh on 9/28/17.
//  Copyright © 2017 anh. All rights reserved.
//

import Foundation
import UIKit

protocol RatingDelegate {
    func didRatingStatus(starView: RatingStarView, status: RatingStatus)
}

class RatingStarView: UIView {
    
    static let arrStatus: [String] = ["Very bad", "Bad", "Good", "Very good", "Excellent"]
    
    var ratingType: RatingStatus = .good
    
    var delegate: RatingDelegate?
    
    // Out let
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet var arrayButtons: [UIButton]!
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupControls()
    }
    
    // MARK: - Setup controls
    
    func setupControls() {
        var size = CGSize.zero
        let width = self.bounds.width
        let height = self.bounds.height
        if width > 4 * height {
            size = CGSize(width: 4 * height, height: height)
        } else {
            size = CGSize(width: width, height: width / 4.0)
        }
        
        if let containerView = Bundle.main.loadNibNamed("RatingStarView", owner: self, options: nil) {
            let view = containerView.first as! UIView
            view.frame.size = size
            self.addSubview(view)
            
            let index = self.ratingType.rawValue
            self.statusLabel.text = RatingStarView.arrStatus[index]
            self.changeRatingStatus(index: index)
        }
    }
    
    func changeRatingStatus(index: Int) {
        self.statusLabel.text = RatingStarView.arrStatus[index]
        for i in 0..<self.arrayButtons.count {
            if i <= index {
                self.arrayButtons[i].setImage(UIImage(named: "img_star"), for: .normal)
            } else {
                self.arrayButtons[i].setImage(UIImage(named: "img_star_empty"), for: .normal)
            }
        }
        self.delegate?.didRatingStatus(starView: self, status: self.ratingType)
    }
    
    // MARK: - Action
    
    @IBAction func ratingButtonAction(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        self.ratingType = RatingStatus(rawValue: tag)!
        self.changeRatingStatus(index: tag)
    }
    
}
