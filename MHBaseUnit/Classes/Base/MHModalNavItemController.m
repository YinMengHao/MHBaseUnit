
//
//  MHModalNavItemController.m
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/1/31.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import "MHModalNavItemController.h"
#import "MHBaseNavigationController.h"

@interface MHModalNavItemController ()<UIGestureRecognizerDelegate>

@end

@implementation MHModalNavItemController
- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"app_back_arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(backToLastVC)];
    self.navigationItem.leftBarButtonItem = leftItem;
}




- (instancetype)modalFromPresenting:(UIViewController *)viewController {
    MHBaseNavigationController *nav = [[MHBaseNavigationController alloc] initWithRootViewController:self];
    [UIApplication.sharedApplication.keyWindow.rootViewController presentViewController:nav animated:YES completion:nil];
    return self;
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)backToLastVC {
    [self pop];
}



@end
