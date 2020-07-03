//
//  MHModalController.m
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/1/31.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import "MHModalController.h"

@interface MHModalController ()

@end

@implementation MHModalController

- (void)modalFromPresenting:(UIViewController *)viewController {
    [viewController presentViewController:self animated:YES completion:nil];
}

@end
