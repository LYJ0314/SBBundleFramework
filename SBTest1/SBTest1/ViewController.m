//
//  ViewController.m
//  SBTest1
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import "ViewController.h"
#import <SBBundleFramework/SBBucketTool.h>
@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

//    NSString *path = [[NSBundle mainBundle] pathForResource:@"SBBundleFramework" ofType:@"framework"];
//    NSLog(@"path = %@", path);
//      
//    NSBundle *myBundle = [NSBundle bundleWithPath:path];
//    NSLog(@"myBunlde = %@", myBundle);
//      
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Wallet" bundle:myBundle];
//    NSLog(@"%@", storyboard);
    
}

- (IBAction)action:(id)sender {
    SBBucketTool *tool = [[SBBucketTool alloc]init];
    [tool pushTransferReceivePageOnViewController:self];

}

@end
