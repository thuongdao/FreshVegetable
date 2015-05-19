//
//  MainViewController.m
//  FreshVegetable
//
//  Created by ThuongDV on 5/19/15.
//  Copyright (c) 2015 DVT. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    if ([segue.identifier isEqualToString:@"AddNewItem"]) {
        UINavigationController *naviController = segue.destinationViewController;

    }
    
}

//- (void) NewItemViewDelegateDidSave:(NewItemViewController *)controller {
//    [self dismissViewControllerAnimated:YES completion:^{
//        NSLog(@"done");
//    }];
//}
//
//- (void) NewItemViewDelegateDidCancel:(NewItemViewController *)controller {
//    [self dismissViewControllerAnimated:YES completion:nil];
//}

@end
