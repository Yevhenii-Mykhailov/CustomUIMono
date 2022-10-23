//
//  Currency.swift
//  CustomUIMono
//
//  Created by Yevhenii M on 22.10.2022.
//

import UIKit

class Currency: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var currencyNameLable: UILabel!
    @IBOutlet weak var currencyValueLable: UILabel!
    @IBOutlet weak var currencyFlagLable: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("Currency", owner: self, options: nil)
        contentView.fixInView(self)
        contentView.backgroundColor = UIColor(red: 82, green: 104, blue: 123)
        contentView.layer.cornerRadius = 16
        currencyValueLable.textColor = .white
        currencyNameLable.textColor = UIColor(red: 158, green: 170, blue: 182)
    }
    
    func configureCurrency(currencyViews: [Currency]) {
        currencyViews.first?.configure(currencyFlag: "🇺🇸", text: "Доллар CША")
        currencyViews.first?.currencyValueLable.text = "36.65 / 37.50"
        currencyViews.last?.configure(currencyFlag: "🇪🇺", text: "Евро")
        currencyViews.last?.currencyValueLable.text = "37.35 / 38.18"
        
        currencyViews.first?.layer.cornerRadius = 16
        currencyViews.first?.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        currencyViews.last?.layer.cornerRadius = 16
        currencyViews.last?.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
    }
    
    private func configure(currencyFlag: String, text: String) {
        currencyNameLable.text = text
        currencyFlagLable.text = currencyFlag
    }
}
