//
//  MHBaseNavigationController.m
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/1/31.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import "MHBaseNavigationController.h"

@interface MHBaseNavigationController ()

@end

@implementation MHBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupNavigationBar];
}

#pragma mark - 配置导航栏
- (void)setupNavigationBar {
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    NSDictionary *textAttri = @{
                                NSFontAttributeName : [UIFont boldSystemFontOfSize:18],
                                NSForegroundColorAttributeName : [UIColor blackColor]
                                };
    navigationBar.barTintColor = [UIColor whiteColor];
    [navigationBar setTitleTextAttributes:textAttri];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    viewController.hidesBottomBarWhenPushed = self.viewControllers.count ? YES : NO;
    [super pushViewController:viewController animated:animated];
}


@end
