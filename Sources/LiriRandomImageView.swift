//
//  File.swift
//  
//
//  Created by Owner on 5/20/22.
//

import Foundation
import UIKit
import Kingfisher
@available(iOS 13.0,*)
class LiriRandomImageView : UIView {
    let url = URL(string:"https://picsum.photos/200/300?random=10")!
    override init(frame: CGRect) {
        super.init(frame: frame)
        addKFView()
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
        addKFView() 
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func addKFView() {
        let imageView = UIImageView(frame: self.bounds)
        imageView.kf.setImage(with: url)
    }
}
