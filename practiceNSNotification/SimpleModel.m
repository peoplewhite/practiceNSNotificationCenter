//
//  SimpleModel.m
//  practiceNSNotification
//
//  Created by sean on 2015/11/29.
//  Copyright © 2015年 sean. All rights reserved.
//

#import "SimpleModel.h"

@implementation SimpleModel
+ (id)sharedInstance {
  static dispatch_once_t onceToken = 0;
  
  __strong static id _sharedObject = nil;
  
  dispatch_once(&onceToken, ^{
    _sharedObject = [[self alloc]init];
  });
  
  return _sharedObject;
}

- (id)init {
  self = [super init];
  
  if (self) {
    _strName = @"default name";
    
  }
  return self;
}



@end
