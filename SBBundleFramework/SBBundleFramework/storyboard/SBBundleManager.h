//
//  SBBundleManager.h
//  SBBundleFramework
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define KTestBundingPath(path) [SBBundleManager getFilePathFromBundle:path]


@interface SBBundleManager : NSObject

+ (NSBundle *)getBundle;

+ (NSString *)getFilePathFromBundle: (NSString *) filePathInBundle;

// 图片直接放到bundle里面
+ (UIImage *)imagesNamedFromSDKResource:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
