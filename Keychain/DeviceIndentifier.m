//
//  DeviceIndentifier.m
//  UDID
//
//  Created by Topband on 15/9/10.
//  Copyright (c) 2015年 Topband. All rights reserved.
//

#import "DeviceIndentifier.h"
#import "KeychainItemWrapper.h"

@implementation DeviceIndentifier

+ (NSString *)gen_uuid
{
    CFUUIDRef uuid_ref = CFUUIDCreate(nil);
    CFStringRef uuid_string_ref = CFUUIDCreateString(nil, uuid_ref);
    CFRelease(uuid_ref);
    NSString *uuid=[NSString stringWithString:(__bridge NSString *)(uuid_string_ref)];
    CFRelease(uuid_string_ref);
    return uuid;
}

+ (NSString *)deviceIndentifier
{
    KeychainItemWrapper *keyChainItem = [[KeychainItemWrapper alloc] initWithIdentifier:kDeviceIndentifier accessGroup:kAccessGroup];
    NSString *strUUID = [keyChainItem objectForKey:(__bridge id)kSecValueData];
    if (!strUUID || !(strUUID.length > 0))
    {
        [keyChainItem setObject:[[self class] gen_uuid] forKey:(__bridge id)kSecValueData];
    }
    
    return [keyChainItem objectForKey:(__bridge id)kSecValueData];
}

+ (void)clearDeviceIndentifier
{
    KeychainItemWrapper *keyChainItem = [[KeychainItemWrapper alloc] initWithIdentifier:kDeviceIndentifier accessGroup:kAccessGroup];
    [keyChainItem resetKeychainItem];
}

@end
