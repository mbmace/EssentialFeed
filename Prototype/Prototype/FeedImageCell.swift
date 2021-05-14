//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Matthias Sehrbrock on 14.05.21.
//

import UIKit

final class FeedImageCell: UITableViewCell {
    @IBOutlet private weak var locationLabel: UILabel!
    @IBOutlet private weak var locationContainer: UIStackView!
    @IBOutlet private weak var feedImageView: UIImageView!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    func configure(with model: FeedImageViewModel) {
        locationLabel.text = model.location
        locationContainer.isHidden = model.location == nil
        
        descriptionLabel.text = model.description
        descriptionLabel.isHidden = model.description == nil
        
        fadeIn(UIImage(named: model.imageName))
    }
    
    override func awakeFromNib() {
             super.awakeFromNib()

             feedImageView.alpha = 0
         }

         override func prepareForReuse() {
             super.prepareForReuse()

             feedImageView.alpha = 0
         }

         func fadeIn(_ image: UIImage?) {
             feedImageView.image = image

             UIView.animate(
                 withDuration: 0.3,
                 delay: 0.3,
                 options: [],
                 animations: {
                     self.feedImageView.alpha = 1
                 })
         }
}
