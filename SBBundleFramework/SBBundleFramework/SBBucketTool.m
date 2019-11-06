//
//  SBBucketTool.m
//  SBTest1
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import "SBBucketTool.h"
#import "SBMainControllerViewController.h"
#import "SBStoryboards.h"
@implementation SBBucketTool


- (void)pushTransferReceivePageOnViewController:(UIViewController *)vc {
    
    SBMainControllerViewController *c = [SBStoryboards getVCWithClass:SBMainControllerViewController.self fromSB:@"Wallet"];
    [vc.navigationController pushViewController:c animated:YES];
}

@end
