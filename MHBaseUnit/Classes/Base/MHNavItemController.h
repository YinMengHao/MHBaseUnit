//
//  MHNavItemController.h
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/1/31.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import "MHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MHNavItemController : MHBaseViewController

- (instancetype)jumpFromNav:(UINavigationController *)navVC;
- (instancetype)jumpFromNav:(UINavigationController *)navVC popCount:(NSUInteger)count;
- (void)pop;

@end

NS_ASSUME_NONNULL_END
