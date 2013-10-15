//
//  ViewController.m
//  testmodelalert
//
//  Created by 王小贱 on 13-9-28.
//  Copyright (c) 2013年 bravetorun. All rights reserved.
//

#import "ViewController.h"
#import "modelAlert.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)test:(id)sender {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self performSelectorOnMainThread:@selector(test) withObject:nil waitUntilDone:YES];
    });
    
}
- (void)test
{
    int d = [[modelAlert alloc] showModelAlertMsg:@"模态对话框" title:@"test" okBtn:@"确定" cancelBtn:@"取消" otherBtn:@"其他1",@"其他2",nil];
    NSLog(@"%d",d);
}
@end
