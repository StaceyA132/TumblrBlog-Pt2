//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Stacey A on 4/8/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    var post : Post!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photo = post.photos.first {
            Nuke.loadImage(with: photo.originalSize.url, into: imageView)
        }
        
        textView.text = post.caption.trimHTMLTags()
    }
}
