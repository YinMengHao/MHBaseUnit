//
//  MHModalNavItemController.h
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/1/31.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import "MHNavItemController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MHModalNavItemController : MHNavItemController

- (instancetype)modalFromPresenting:(UIViewController *)viewController;
- (void)dismiss;
- (void)backToLastVC;

@end

NS_ASSUME_NONNULL_END
