//
//  SBMainControllerViewController.m
//  SBBundleFramework
//
//  Created by g42 on 2019/10/30.
//  Copyright © 2019 g42. All rights reserved.
//

#import "SBMainControllerViewController.h"
#import "SBBundleManager.h"

@interface SBMainControllerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@end

@implementation SBMainControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.text = @"=======";
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SBBundleFramework" ofType:@"framework"];
//    self.imageView.image = [SBBundleManager imagesNamedFromSDKResource:@"user_avatar_male"];
}
- (IBAction)switchBtn:(id)sender {
    self.label.text = @"+++++++";
    self.imageView.image = [SBBundleManager imagesNamedFromSDKResource:@"user_avatar_male"];
    self.imageView2.image = [UIImage imageWithContentsOfFile:KTestBundingPath(@"resource.bundle/pic.xcassets/Icon.imageset/Icon.png")];
    
    [self i_readConfigureFile];
    
}


- (void)i_readConfigureFile {

    NSArray *urlsData = [[NSArray alloc] initWithContentsOfFile:KTestBundingPath(@"resource.bundle/ApiUrls.plist")];
    
    [urlsData enumerateObjectsUsingBlock:^(NSDictionary *urlData, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"-----%@",urlData);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
