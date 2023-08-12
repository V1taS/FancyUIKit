//
//  ColorSliderCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 13.05.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - PlayerTableViewCell

final class ColorSliderCell: UITableViewCell {
  
  // MARK: - Private properties
  
  private let colorSliderView = ColorSlider()
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
  ///  - titleCell: Заголовок для ячейки
  public func configureCellWith(titleCell: String?) {
    titleLabel.text = titleCell
    colorSliderView.value = 0.5
    colorSliderView.minimumTrackTintColor = .red
  }
  
  // MARK: - Private func
  
  private func configureLayout() {
    let appearance = Appearance()
    
    [colorSliderView, titleLabel].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      contentView.addSubview($0)
    }
    
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: appearance.insets.top),
      titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
      
      colorSliderView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                           constant: appearance.insets.top),
      colorSliderView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      colorSliderView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
      colorSliderView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
    ])
  }
  
  private func applyDefaultBehavior() {
    backgroundColor = fancyColor.darkAndLightTheme.primaryWhite
    selectionStyle = .none
    
    titleLabel.textColor = .black
  }
}

// MARK: - Appearance

private extension ColorSliderCell {
  struct Appearance {
    let insets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
  }
}
