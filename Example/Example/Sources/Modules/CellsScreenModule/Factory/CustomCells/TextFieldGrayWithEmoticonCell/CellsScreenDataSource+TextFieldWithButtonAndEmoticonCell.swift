//
//  CellsScreenDataSource+TextFieldGrayWithEmoticonCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 17.06.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - TextFieldGrayWithEmoticonCell

/// Моделька для ячейки
struct TextFieldGrayWithEmoticonCellModel: CellModel {
  let emoticon: Character?
  
  var titleCell: String = "TextFieldGrayWithEmoticonCell"
  var reuseIdentifier = CellsScreenCell.textFieldGrayWithEmoticonCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == TextFieldGrayWithEmoticonCellModel {
  static func makeForTextFieldGrayWithEmoticonCell() -> CellsScreenDataSource {    
    let models = [
      TextFieldGrayWithEmoticonCellModel(
        emoticon: "♥️"
      )
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? TextFieldGrayWithEmoticonCell else {
        return
      }
      let textField = TextFieldView()
      textField.layer.cornerRadius = 12
      textField.layer.borderWidth = 1
      textField.layer.borderColor = fancyColor.only.secondaryGray.cgColor
      textField.placeholder = "TextFieldGrayWithEmoticonCell"
      
      cell.configureCellWith(textField: textField,
                             emoticon: model.emoticon,
                             actionEmoticon: nil)
    }
  }
}
