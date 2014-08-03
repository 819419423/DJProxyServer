//
//  NSData+CocoaHTTPServer.m
//  DJProxyServer
//
//  Created by Jing Dai on 8/3/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "NSData+CocoaHTTPServer.h"

@implementation NSData (CocoaHTTPServer)

- (NSData *)dataFromDispatch:(dispatch_data_t)data
{
    NSData *result = nil;
    const void *buffer = NULL;
    size_t bufferSize = 0;
    dispatch_data_t mappedData = dispatch_data_create_map(data, &buffer, &bufferSize);
    if (mappedData) {
        result = [NSData dataWithBytes:buffer length:bufferSize];
    }
    
    return result;
}

- (dispatch_data_t)dispatchDataOnQueue:(dispatch_queue_t)queue
{
    return dispatch_data_create([self bytes], [self length], queue, DISPATCH_DATA_DESTRUCTOR_DEFAULT);
}

@end
