//
//  SBStoryboards.m
//  SBBundleFramework
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import "SBStoryboards.h"
#import "SBBundleManager.h"

@implementation SBStoryboards

+ (__kindof UIViewController *)getVCWithClass:(Class)c fromSB:(NSString *)sb
{
   
    NSString *path = KTestBundingPath(@"resource.bundle");
    NSLog(@"path2 = %@", path);
    
    NSBundle *myBundle = [NSBundle bundleWithPath:path];
    NSLog(@"myBunlde = %@", myBundle);
      
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Wallet" bundle:myBundle];
    NSLog(@"%@", storyboard);
    
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(c)];
}
@end
