//
//  CellsScreenDataSource+CardLockViewCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 12.07.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - LabelBigGrayCell

/// Моделька для ячейки
struct CardLockViewCellModel: CellModel {
  let image: UIImage?
  let title: String?
  let cardState: CardLockView.CardState
  var cardAction: (() -> Void)?
  
  var titleCell: String = "CardLockCollectionViewCell"
  var reuseIdentifier = CellsScreenCell.cardLockViewCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == CardLockViewCellModel {
  static func makeForCardLockViewCell() -> CellsScreenDataSource {
    let models = [
      CardLockViewCellModel(
        image: UIImage(named: "die.green"),
        title: "Стандартный",
        cardState: .none,
        cardAction: {
          print("Action")
        }
      ),
      CardLockViewCellModel(
        image: UIImage(named: "die.blue"),
        title: "Синий",
        cardState: .lock,
        cardAction: {
          print("Action")
        }
      ),
      CardLockViewCellModel(
        image: UIImage(named: "die.red"),
        title: "Красный",
        cardState: .checkmark,
        cardAction: {
          print("Action")
        }
      ),
      CardLockViewCellModel(
        image: UIImage(named: "coin_gold"),
        title: "Золотая",
        cardState: .none,
        cardAction: {
          print("Action")
        }
      ),
      CardLockViewCellModel(
        image: UIImage(named: "coun_euro"),
        title: "Евро",
        cardState: .checkmark,
        cardAction: {
          print("Action")
        }
      ),
      CardLockViewCellModel(
        image: UIImage(named: "just_coin"),
        title: "Желтый",
        cardState: .lock,
        cardAction: {
          print("Action")
        }
      ),
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? CardLockViewCell else {
        return
      }
      cell.configureWith(
        titleCell: model.titleCell,
        image: model.image,
        title: model.title,
        cardState: model.cardState,
        cardAction: model.cardAction
      )
    }
  }
}
