//
//  ViewController.m
//  UDID
//
//  Created by Topband on 15/9/10.
//  Copyright (c) 2015年 Topband. All rights reserved.
//

#import "ViewController.h"
#import "DeviceIndentifier.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *label;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self setKeyChainValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)indentificer:(id)sender
{
    NSString *str = [DeviceIndentifier deviceIndentifier];
    self.label.text = str;
}

- (IBAction)clear:(id)sender
{
    [DeviceIndentifier clearDeviceIndentifier];
}
@end
