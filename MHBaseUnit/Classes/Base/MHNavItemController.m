

//
//  MHNavItemController.m
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/1/31.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import "MHNavItemController.h"

@interface MHNavItemController ()

@end

@implementation MHNavItemController

- (instancetype)jumpFromNav:(UINavigationController *)navVC {
    if ([navVC isKindOfClass:[UINavigationController class]]) {
        [navVC pushViewController:self animated:YES];
    }
    return self;
}

- (instancetype)jumpFromNav:(UINavigationController *)navVC popCount:(NSUInteger)count {
    if (navVC.viewControllers.count < count || count <= 0) {
        return nil;
    }
    NSMutableArray *subControllers = [navVC.viewControllers mutableCopy];
    NSRange range = NSMakeRange(subControllers.count - count, count);
    [subControllers removeObjectsInRange:range];
    [navVC setViewControllers:[subControllers copy] animated:YES];
    return self;
}

- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
