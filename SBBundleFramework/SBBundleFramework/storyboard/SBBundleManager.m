//
//  SBBundleManager.m
//  SBBundleFramework
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import "SBBundleManager.h"

@implementation SBBundleManager


+ (NSBundle *)getBundle {
       NSString *path = [[NSBundle mainBundle] pathForResource:@"SBBundleFramework" ofType:@"framework"];
       NSBundle *myBundle = [NSBundle bundleWithPath:path];
//    return [NSBundle bundleWithPath: [[NSBundle mainBundle] pathForResource:@"SBBundleFramework" ofType: @"framework"]];
    return myBundle;
}

+ (NSString *)getFilePathFromBundle: (NSString *) filePathInBundle{
    
    NSBundle *myBundle = [SBBundleManager getBundle];
    if (myBundle && filePathInBundle) {
        return [[myBundle resourcePath] stringByAppendingPathComponent: filePathInBundle];
    }
    return nil;
}

/// 图片直接放到bundle里面
/// @param imageName <#imageName description#>
+ (UIImage *)imagesNamedFromSDKResource:(NSString *)imageName {
    NSString *bundlePath = KTestBundingPath(@"resource.bundle");
    NSString *imagePath = [bundlePath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", imageName]];
    return [UIImage imageWithContentsOfFile:imagePath];
}


@end
