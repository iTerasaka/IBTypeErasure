//
//  MainViewDelegateObject.swift
//  IBTypeErasure
//
//  Created by i_terasaka on 2017/07/26.
//  Copyright © 2017年 i_terasaka. All rights reserved.
//

import UIKit

final class MainViewDelegateObject: NSObject { }

// MARK: - MainViewDataSource

extension MainViewDelegateObject: MainViewDataSource {

    var labelTitle: String {
        return "タイトル"
    }
    
    var buttonTitle: String {
        return "ボタン"
    }
}

// MARK: - MainViewDelegate

extension MainViewDelegateObject: MainViewDelegate {

    func mainView(didTouchButton button: UIButton) {
        print("tapped!!")
    }
}
