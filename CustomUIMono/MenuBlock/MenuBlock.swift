//
//  MenuBlock.swift
//  CustomUIMono
//
//  Created by Yevhenii M on 22.10.2022.
//

import Foundation
import UIKit

class MenuBlock: UIView {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var imageTextLable: UILabel!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var imageBoxView: UIView!
    var delegate: MenuBlockDelegate?
    
    private let menuBlockColors = [UIColor(red: 120, green: 96, blue: 178),
                                   UIColor(red: 133, green: 153, blue: 163),
                                   UIColor(red: 87, green: 182, blue: 118)]
    private let menuBlockImages = [UIImage(named: "pawprint"),
                                   UIImage(systemName: "checkmark.rectangle.portrait"),
                                   UIImage(named: "circle")]
    private let menuBlockText = ["Покупка Частями", "Архив", "Рассрочка на карту"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("MenuBlock", owner: self, options: nil)
        contentView.fixInView(self)
        iconImageView.tintColor = .white
        iconImageView.layer.cornerRadius = 12
        imageBoxView.layer.cornerRadius = 28
        self.layer.cornerRadius = 20
    }
    
    func configureMenuBlock(menuBlockViews: [MenuBlock]) {
        for (index, item) in menuBlockViews.enumerated() {
            item.imageBoxView.backgroundColor = menuBlockColors[index]
            item.iconImageView.image = menuBlockImages[index]
            item.imageTextLable.text = menuBlockText[index]
        }
    }
    
    @IBAction func elementPressed(_ sender: UIButton) {
        delegate?.menuElementPressed()
        if let text = imageTextLable.text {
            print(text)
        }
    }
}
