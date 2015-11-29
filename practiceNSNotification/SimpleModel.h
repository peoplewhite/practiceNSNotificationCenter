//
//  SimpleModel.h
//  practiceNSNotification
//
//  Created by sean on 2015/11/29.
//  Copyright © 2015年 sean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleModel : NSObject

+ (id)sharedInstance;

@property (nonatomic, strong) NSString *strName;
- (void)setDefaultName:(NSString *)strSetDefaultName;

@end
