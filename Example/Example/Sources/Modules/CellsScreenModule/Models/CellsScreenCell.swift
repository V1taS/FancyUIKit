//
//  CellsScreenCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 02.05.2022.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - CellsScreenCell

enum CellsScreenCell: String {
  
  // MARK: - Cases
  
  case saleCardCell
  
  /// Ячейки с оплатой
  case purchasesCardsCell
  
  /// Ячейка с текстом и ссылками
  case linkTextViewCell
  
  /// Заголовок и описание
  case headerTitleAndSubtitleViewCell
  
  /// Ячейка с онбордингом
  case onboardingViewCell
  
  /// Реферальная программа
  case referralProgramTableViewCell
  
  /// Карточка с изображением и текстом
  case cardLockViewCell
  
  /// Кнопка Preemium
  case premiumButton
  
  /// Вью и ячейка для коллекции с игроком
  case playerViewAndCell
  
  /// Основная карточка на главном экране
  case mainCardTableViewCell
  
  /// Рекламный лайбл
  case labelGradientView
  
  /// Основная кнопка
  case button
  
  /// Текстовое поле
  case textField
  
  /// Список элементов в формате `String`
  case scrollLabelGradientView
  
  /// Ячейка с маленькой кнопкой
  case smallButtonCell
  
  /// Ячейка с настраиваемым текстом
  case customTextCell
  
  /// Ячейка с настраиваемой высотой
  case customPaddingCell
  
  /// Ячейка с информацией об игроке
  case playerInfoCell
  
  /// Ячейка текствого поля с кнопкой
  case textFieldWithButton
  
  /// Ячейка для добавления нового игрока в команду
  case textFielAddPlayerCell
  
  /// Текстовое поле с кнопкой
  case textFieldGrayWithButtonCell
  
  /// Текстовое поле и смайлик
  case textFieldGrayWithEmoticonCell
  
  /// Вьюшка со смайликом
  case emoticonSelectionViewCell
  
  /// Ячейка разделителя
  case divider
  
  /// Ячейка с текстом и переключателем
  case labelAndSwitchCell
  
  /// Ячейка с двумя заголовками
  case doubleTitleCell
  
  /// Ячейка с текстом и иконкой
  case labelAndChevronCell
  
  /// Ячейка с изображением, текстом и шевроном
  case imageAndLabelWithChevronCell
  
  /// Ячейка с изображением, текстом и переключателем
  case imageAndLabelWithSwitchCell
  
  /// Ячейка с изображением и двумя текстами
  case imageAndDoubleTitleCell
  
  /// Ячейка с squircle, текстом и переключателем
  case squircleImageAndLabelWithSwitchCell
  
  /// Ячейка с squircle, текстом и сегмент контроллом
  case squircleImageAndLabelWithSegmentedControlCell
  
  /// Ячейка с текстом и сегмент контроллом
  case labelWithSegmentedControlCell
  
  /// Ячейка с squircle, текстом и шевроном
  case squircleImageAndLabelWithChevronCell
  
  /// Ячейка с squircle и двумя текстами
  case squircleImageAndDoubleTitleCell
  
  /// Ячейка со SquircleView
  case squircleViewCell
  
  /// Ячейка с большим изображением, текстом и галочкой справа
  case largeImageAndLabelWithCheakmarkCell
  
  /// Большая ячейка с кнопкой
  case imageAndLabelWithButtonBigCell
  
  /// Лайбл в большой серой ячейке
  case labelBigGrayCell
  
  /// Слайдер не интерактивный
  case colorSlider
  
  /// Ячейка с вьюшкой для фильмов
  case filmViewCell
  
  var reuseIdentifier: String {
    return cellClass.description()
  }
  
  var cellClass: UITableViewCell.Type {
    switch self {
    case .mainCardTableViewCell:
      return MainCardTableViewCell.self
    case .labelGradientView:
      return LabelGradientTableViewCell.self
    case .button:
      return ButtonTableViewCell.self
    case .premiumButton:
      return PremiumButtonTableViewCell.self
    case .textField:
      return TextFieldTableViewCell.self
    case .scrollLabelGradientView:
      return ScrollLabelGradientTableViewCell.self
    case .labelAndSwitchCell:
      return LabelAndSwitchCell.self
    case .doubleTitleCell:
      return DoubleTitleCell.self
    case .labelAndChevronCell:
      return LabelAndChevronCell.self
    case .smallButtonCell:
      return SmallButtonCell.self
    case .customTextCell:
      return CustomTextCell.self
    case .customPaddingCell:
      return CustomPaddingCell.self
    case .playerViewAndCell:
      return PlayerTableViewCell.self
    case .playerInfoCell:
      return PlayerInfoTableViewCell.self
    case .textFieldWithButton:
      return TextFieldWithButtonCell.self
    case .divider:
      return DividerTableViewCell.self
    case .textFielAddPlayerCell:
      return TextFielAddPlayerCell.self
    case .purchasesCardsCell:
      return PurchasesCardsCell.self
    case .linkTextViewCell:
      return LinkTextViewCell.self
    case .onboardingViewCell:
      return OnboardingViewCell.self
    case .headerTitleAndSubtitleViewCell:
      return HeaderTitleAndSubtitleViewCell.self
    case .squircleViewCell:
      return SquircleViewCell.self
    case .imageAndLabelWithChevronCell:
      return ImageAndLabelWithChevronCell.self
    case .imageAndLabelWithSwitchCell:
      return ImageAndLabelWithSwitchCell.self
    case .imageAndDoubleTitleCell:
      return ImageAndDoubleTitleCell.self
    case .squircleImageAndLabelWithSwitchCell:
      return SquircleImageAndLabelWithSwitchCell.self
    case.squircleImageAndLabelWithSegmentedControlCell:
      return SquircleImageAndLabelWithSegmentedControlCell.self
    case .squircleImageAndLabelWithChevronCell:
      return SquircleImageAndLabelWithChevronCell.self
    case .squircleImageAndDoubleTitleCell:
      return SquircleImageAndDoubleTitleCell.self
    case .largeImageAndLabelWithCheakmarkCell:
      return LargeImageAndLabelWithCheakmarkCell.self
    case .filmViewCell:
      return FilmViewCell.self
    case .colorSlider:
      return ColorSliderCell.self
    case .labelWithSegmentedControlCell:
      return LabelWithSegmentedControlCell.self
    case .imageAndLabelWithButtonBigCell:
      return ImageAndLabelWithButtonBigGrayCell.self
    case .emoticonSelectionViewCell:
      return EmoticonSelectionViewCell.self
    case .textFieldGrayWithButtonCell:
      return TextFieldGrayWithButtonCell.self
    case .textFieldGrayWithEmoticonCell:
      return TextFieldGrayWithEmoticonCell.self
    case .labelBigGrayCell:
      return LabelBigGrayCell.self
    case .cardLockViewCell:
      return CardLockViewCell.self
    case .referralProgramTableViewCell:
      return ReferralProgramTableViewCell.self
    case .saleCardCell:
      return SaleTableViewCell.self
    }
  }
  
  var dataSource: UITableViewDataSource? {
    switch self {
    case .mainCardTableViewCell:
      return CellsScreenDataSource.makeForMainCard()
    case .labelGradientView:
      return CellsScreenDataSource.makeForLabelGradient()
    case .button:
      return CellsScreenDataSource.makeForButton()
    case .premiumButton:
      return CellsScreenDataSource.makeForPremiumButton()
    case .textField:
      return CellsScreenDataSource.makeForTextField()
    case .scrollLabelGradientView:
      return CellsScreenDataSource.makeForScrollLabelGradient()
    case .labelAndSwitchCell:
      return CellsScreenDataSource.makeForLabelAndSwitch()
    case .doubleTitleCell:
      return CellsScreenDataSource.makeForDoubleTitle()
    case .labelAndChevronCell:
      return CellsScreenDataSource.makeForLabelAndChevron()
    case .smallButtonCell:
      return CellsScreenDataSource.makeForSmallButton()
    case .customTextCell:
      return CellsScreenDataSource.makeForCustomText()
    case .customPaddingCell:
      return CellsScreenDataSource.makeForCustomPadding()
    case .playerViewAndCell:
      return CellsScreenDataSource.makeForPlayer()
    case .playerInfoCell:
      return CellsScreenDataSource.makeForPlayerInfo()
    case .textFieldWithButton:
      return CellsScreenDataSource.makeForTextFieldWithButton()
    case .divider:
      return CellsScreenDataSource.makeForDivider()
    case .textFielAddPlayerCell:
      return CellsScreenDataSource.makeForTextFielAddPlayer()
    case .purchasesCardsCell:
      return CellsScreenDataSource.makeForPurchasesCardsCell()
    case .linkTextViewCell:
      return CellsScreenDataSource.makeForLinkTextViewCell()
    case .onboardingViewCell:
      return CellsScreenDataSource.makeForOnboardingViewCellModel()
    case .headerTitleAndSubtitleViewCell:
      return CellsScreenDataSource.makeForHeaderTitleAndSubtitleViewCell()
    case .squircleViewCell:
      return CellsScreenDataSource.makeForSquircleViewCell()
    case .imageAndLabelWithChevronCell:
      return CellsScreenDataSource.makeForImageAndLabelWithChevronCell()
    case .imageAndLabelWithSwitchCell:
      return CellsScreenDataSource.makeForImageAndLabelWithSwitchCell()
    case .imageAndDoubleTitleCell:
      return CellsScreenDataSource.makeForImageAndDoubleTitleCell()
    case .squircleImageAndLabelWithSwitchCell:
      return CellsScreenDataSource.makeForSquircleImageAndLabelWithSwitchCell()
    case .squircleImageAndLabelWithSegmentedControlCell:
      return CellsScreenDataSource.makeForSquircleImageAndLabelWithSegmentedControlCell()
    case .squircleImageAndLabelWithChevronCell:
      return CellsScreenDataSource.makeForSquircleImageAndLabelWithChevronCell()
    case .squircleImageAndDoubleTitleCell:
      return CellsScreenDataSource.makeForSquircleImageAndDoubleTitleCell()
    case .largeImageAndLabelWithCheakmarkCell:
      return CellsScreenDataSource.makeForLargeImageAndLabelWithCheakmarkCell()
    case .filmViewCell:
      return CellsScreenDataSource.makeForFilmViewCell()
    case .colorSlider:
      return CellsScreenDataSource.makeForColorSlider()
    case .labelWithSegmentedControlCell:
      return CellsScreenDataSource.makeForLabelWithSegmentedControlCell()
    case .imageAndLabelWithButtonBigCell:
      return CellsScreenDataSource.makeForImageAndLabelWithButtonBigCell()
    case .emoticonSelectionViewCell:
      return CellsScreenDataSource.makeForEmoticonSelectionViewCell()
    case .textFieldGrayWithButtonCell:
      return CellsScreenDataSource.makeForTextFieldGrayWithButtonCell()
    case .textFieldGrayWithEmoticonCell:
      return CellsScreenDataSource.makeForTextFieldGrayWithEmoticonCell()
    case .labelBigGrayCell:
      return CellsScreenDataSource.makeForLabelBigGrayCell()
    case .cardLockViewCell:
      return CellsScreenDataSource.makeForCardLockViewCell()
    case .referralProgramTableViewCell:
      return CellsScreenDataSource.makeForReferralProgramTableViewCell()
    case .saleCardCell:
      return CellsScreenDataSource.makeForSale()
    }
  }
}

// MARK: - CaseIterable

extension CellsScreenCell: CaseIterable {}
