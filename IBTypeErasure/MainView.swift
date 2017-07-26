//
//  MainView.swift
//  IBTypeErasure
//
//  Created by i_terasaka on 2017/07/26.
//  Copyright © 2017年 i_terasaka. All rights reserved.
//

import UIKit

@objc protocol MainViewDelegate {
    func mainView(didTouchButton button: UIButton)
}

@objc protocol MainViewDataSource {
    var labelTitle: String { get }
    var buttonTitle: String { get }
}

// MARK: - MainView

final class MainView: UIView {
    
    @IBOutlet private weak var delegate: MainViewDelegate?
    @IBOutlet private weak var dataSource: MainViewDataSource?
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var button: UIButton!
    
    @IBAction private func onTouchedButton(_ sender: UIButton) {
        delegate?.mainView(didTouchButton: sender)
    }
    
    func draw() {
        label.text = dataSource?.labelTitle
        button.setTitle(dataSource?.buttonTitle, for: .normal)
    }
}
