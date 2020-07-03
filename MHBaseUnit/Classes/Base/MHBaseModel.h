//
//  MHBaseModel.h
//  SuiXingYouShops
//
//  Created by HelloWorld on 2019/2/1.
//  Copyright © 2019 SuiXingYou. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义标准的C层回调block。这里面的obj会根据不同对象的方法的返回而有差异。
typedef void (^UICallback)(id _Nullable obj, NSError * _Nonnull error);

//这里定义标准的数据解析block,这个block供M层内部解析用，不对外暴露
typedef id _Nullable (^DataParse)(id _Nullable retData, NSError * _Nonnull error);

NS_ASSUME_NONNULL_BEGIN

@interface MHBaseModel : NSObject

- (void)stopRequest;

- (void)startRequest:(NSString *)url params:(id)params outParse:(DataParse)obj callback:(UICallback)callback;

@end

NS_ASSUME_NONNULL_END
