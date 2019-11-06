//
//  SBStoryboards.h
//  SBBundleFramework
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SBStoryboards : NSObject
+ (__kindof UIViewController *)getVCWithClass:(Class)c fromSB:(NSString *)sb;

@end

NS_ASSUME_NONNULL_END
