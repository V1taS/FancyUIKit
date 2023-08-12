//
//  EmoticonSelectionViewCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 17.06.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - EmoticonSelectionViewCell

final class EmoticonSelectionViewCell: UITableViewCell {
  
  // MARK: - Private properties
  
  private let emoticonSelectionView = EmoticonSelectionView()
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
  ///  - titleCell: Заголовок ячейки
  ///  - emoticon: Смайлик
  ///  - actionEmoticon: Действие на смайлик
  public func configureWith(titleCell: String?,
                            emoticon: Character?,
                            actionEmoticon: ((_ emoticon: Character?,
                                              _ style: EmoticonSelectionView.Style) -> Void)?) {
    titleLabel.text = titleCell
    emoticonSelectionView.configureWith(emoticon: emoticon, actionEmoticon: actionEmoticon)
  }
  
  // MARK: - Private func
  
  private func configureLayout() {
    let appearance = Appearance()
    
    [emoticonSelectionView, titleLabel].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      contentView.addSubview($0)
    }
    
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: appearance.insets.top),
      titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
      
      emoticonSelectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                                 constant: appearance.insets.top),
      emoticonSelectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
      emoticonSelectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
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

private extension EmoticonSelectionViewCell {
  struct Appearance {
    let insets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
  }
}
