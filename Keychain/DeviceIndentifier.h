//
//  DeviceIndentifier.h
//  UDID
//
//  Created by Topband on 15/9/10.
//  Copyright (c) 2015年 Topband. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const kAccessGroup = @"group.lemon.UDId";
static NSString *const kDeviceIndentifier = @"TestUUID";

@interface DeviceIndentifier : NSObject

+ (NSString *)deviceIndentifier;

+ (void)clearDeviceIndentifier;

@end
