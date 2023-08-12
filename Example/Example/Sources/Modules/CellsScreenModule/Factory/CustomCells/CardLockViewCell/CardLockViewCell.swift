//
//  CardLockViewCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 12.07.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - EmoticonSelectionViewCell

final class CardLockViewCell: UITableViewCell {
  
  // MARK: - Private properties
  
  private let cardLockView = CardLockView()
  private let titleLabel = UILabel()
  
  // MARK: - Initilisation
  
  public override init(style: CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    configureLayout()
    applyDefaultBehavior()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
  
  // MARK: - Public func
  
  /// Настраиваем ячейку
  /// - Parameters:
  ///  - image: Изображение
  ///  - title: Название
  ///  - cardState: Стиль карточки
  ///  - cardAction: Действие по нажатию на карточку
  public func configureWith(titleCell: String?,
                            image: UIImage?,
                            title: String?,
                            cardState: CardLockView.CardState,
                            cardAction: (() -> Void)? = nil) {
    titleLabel.text = titleCell
    cardLockView.configureWith(
      image: image,
      title: title,
      cardState: cardState,
      cardAction: cardAction
    )
  }
  
  // MARK: - Private func
  
  private func configureLayout() {
    let appearance = Appearance()
    
    [cardLockView, titleLabel].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      contentView.addSubview($0)
    }
    
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: appearance.insets.top),
      titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
      
      cardLockView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                        constant: appearance.insets.top),
      cardLockView.centerXAnchor.constraint(equalTo: centerXAnchor),
      cardLockView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                           constant: -appearance.insets.bottom)
    ])
  }
  
  private func applyDefaultBehavior() {
    backgroundColor = fancyColor.darkAndLightTheme.primaryWhite
    selectionStyle = .none
    
    titleLabel.textColor = .black
  }
}

// MARK: - Appearance

private extension CardLockViewCell {
  struct Appearance {
    let insets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
  }
}
