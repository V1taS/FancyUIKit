//
//  CellsScreenDataSource+PremiumButton.swift
//  RandomUIKitExample
//
//  Created by Антон Тропин on 03.06.23.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - ButtonModel

/// Моделька для ячейки
struct PremiumButtonModel: CellModel {
  let title: String?
  let style: PremiumButtonView.Style
  
  var titleCell: String
  var reuseIdentifier = CellsScreenCell.premiumButton.reuseIdentifier
}

extension CellsScreenDataSource where Model == PremiumButtonModel {
  static func makeForPremiumButton() -> CellsScreenDataSource {
    
    let models = [
      PremiumButtonModel(title: "Premium",
                         style: .premium,
                         titleCell: "PremiumButtonModel"),
      PremiumButtonModel(title: "Premium",
                         style: .nonPremium,
                         titleCell: "PremiumButtonModel")
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? PremiumButtonTableViewCell else {
        return
      }
      
      cell.configureWith(title: model.title, style: model.style)
    }
  }
}
