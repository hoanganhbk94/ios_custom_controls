//
//  RatingViewController.swift
//  CustomControl
//
//  Created by Mai Hoang Anh on 9/28/17.
//  Copyright © 2017 anh. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController, RatingDelegate {
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ratingStarView: RatingStarView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.ratingStarView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Rating delegate
    
    func didRatingStatus(starView: RatingStarView, status: RatingStatus) {
        self.ratingLabel.text = RatingStarView.arrStatus[status.rawValue]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
