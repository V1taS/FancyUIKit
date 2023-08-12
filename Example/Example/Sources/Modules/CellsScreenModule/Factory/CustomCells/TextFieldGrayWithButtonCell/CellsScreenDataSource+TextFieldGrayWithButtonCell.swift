//
//  CellsScreenDataSource+TextFieldGrayWithButtonCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 18.06.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - TextFieldGrayWithButtonCell

/// Моделька для ячейки
struct TextFieldGrayWithButtonCellModel: CellModel {
  let buttonImage: UIImage?
  let buttonImageColor: UIColor?
  
  var titleCell: String = "TextFieldGrayWithButtonCell"
  var reuseIdentifier = CellsScreenCell.textFieldGrayWithButtonCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == TextFieldGrayWithButtonCellModel {
  static func makeForTextFieldGrayWithButtonCell() -> CellsScreenDataSource {
    let largeConfig = UIImage.SymbolConfiguration(pointSize: 24,
                                                  weight: .bold,
                                                  scale: .large)
    
    let circle = UIImage(systemName: "checkmark.circle.fill", withConfiguration: largeConfig)
    
    let models = [
      TextFieldGrayWithButtonCellModel(
        buttonImage: circle,
        buttonImageColor: fancyColor.only.primaryGreen
      )
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? TextFieldGrayWithButtonCell else {
        return
      }
      let textField = TextFieldView()
      textField.layer.cornerRadius = 12
      textField.layer.borderWidth = 1
      textField.layer.borderColor = fancyColor.only.secondaryGray.cgColor
      textField.placeholder = "TextFieldGrayWithButtonCell"
      
      cell.configureCellWith(textField: textField,
                             buttonImage: model.buttonImage,
                             buttonAction: {
        print("buttonAction")
      })
    }
  }
}

