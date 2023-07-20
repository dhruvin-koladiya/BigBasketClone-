//
//  PricePopup.swift
//  PageUI
//
//  Created by ABC on 04/05/23.
//

import UIKit

class PricePopup: UIView {
    
    // MARK: - IBoutlet
    @IBOutlet weak var kgButton: UIButton!
    @IBOutlet weak var fiveGm: UIButton!
    @IBOutlet weak var twoFiftyGmButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    }
    
    func xibSetup(frame: CGRect)  {
        let view = loadxib()
        view.frame = frame
        addSubview(view)
    }
    
    func  loadxib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "PricePopup", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
}
