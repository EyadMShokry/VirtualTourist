//
//  PhotoCollectionViewCell.swift
//  VirtualTourist
//
//  Created by Eyad Shokry on 2/28/19.
//  Copyright © 2019 Eyad Shokry. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndecator: UIActivityIndicatorView!
    
    var imageUrl: String = ""
}
