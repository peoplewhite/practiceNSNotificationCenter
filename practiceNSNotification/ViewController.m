//
//  ViewController.m
//  practiceNSNotification
//
//  Created by sean on 2015/11/29.
//  Copyright © 2015年 sean. All rights reserved.
//

#import "ViewController.h"
#import "SimpleModel.h"

@interface ViewController ()


@end

@implementation ViewController
{
  SimpleModel *model;
  
}

- (void)viewDidLoad {
  [super viewDidLoad];
  model = [SimpleModel sharedInstance];
  
  
  [self registerForNotifications];
  
}

- (void)viewWillAppear:(BOOL)animated {
  _labName.text = model.strName;
  
}

- (void)registerForNotifications {
  
  //============================================================================
  // set NotificationCenter Observer
  //============================================================================
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(handleNameChanged:)
                                               name:@"nameChanged" object:nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}


- (void)handleNameChanged:(NSNotification *)notification {
  NSString *strNewName = notification.userInfo[@"newName"];
  _labName.text = strNewName;
}


- (IBAction)btnFunctionChangeName:(id)sender {
  
  [model setDefaultName:@"kimura sean"];
  
  NSDictionary *dictParams = @{@"newName" : @"kimura sean"};
  [[NSNotificationCenter defaultCenter] postNotificationName:@"nameChanged" object:self userInfo:dictParams];
}

@end
