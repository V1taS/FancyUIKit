//
//  CellsScreenDataSource+MainCard.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 02.05.2022.
//

import UIKit

// MARK: - MainCardModel

/// Моделька для ячейки
struct MainCardModel: CellModel {
  let imageCard: UIImage?
  let titleCard: String?
  let isShowADVLabel: Bool
  let titleADVText: String?
  let isDisabled: Bool
  let gradientColors: [UIColor]?
  
  var titleCell: String
  var reuseIdentifier = CellsScreenCell.mainCardTableViewCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == MainCardModel {
  static func makeForMainCard() -> CellsScreenDataSource {
    let models = [
      MainCardModel(imageCard: UIImage(systemName: "film"),
                    titleCard: "Фильмы Фильмы Фильмы Фильмы Фильмы Фильмы",
                    isShowADVLabel: true,
                    titleADVText: "Реклама",
                    isDisabled: false,
                    gradientColors: nil,
                    titleCell: "MainCardView"),
      MainCardModel(imageCard: nil,
                    titleCard: "Место сдается",
                    isShowADVLabel: true,
                    titleADVText: "Реклама",
                    isDisabled: false,
                    gradientColors: [
                      .yellow, .red
                    ],
                    titleCell: "MainCardView"),
      MainCardModel(imageCard: UIImage(systemName: "number"),
                    titleCard: "Число",
                    isShowADVLabel: false,
                    titleADVText: "Premium",
                    isDisabled: false,
                    gradientColors: nil,
                    titleCell: "MainCardView")
    ]
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? MainCardTableViewCell else {
        return
      }
      cell.configureCellWith(titleCell: model.titleCell,
                             imageCard: model.imageCard,
                             titleCard: model.titleCard,
                             isShowADVLabel: model.isShowADVLabel,
                             titleADVText: model.titleADVText,
                             isDisabled: model.isDisabled,
                             gradientColors: model.gradientColors)
    }
  }
}
