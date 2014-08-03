//
//  DJHTTPAsyncDataResponse.m
//  DJProxyServer
//
//  Created by Jing Dai on 8/3/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJHTTPAsyncDataResponse.h"
#import "HTTPLogging.h"
#import "NSData+CocoaHTTPServer.h"

#if ! __has_feature(objc_arc)
#warning This file be compiled with ARC. Use -fobjc-arc flag (or convert your project to ARC).
#endif

typedef NS_ENUM(NSUInteger, DJHTTPResponseState) {
    DJHTTPResponseStateNone,
    DJHTTPResponseStateConnected,
    DJHTTPResponseStateWriting,
    DJHTTPResponseStateResponseReady,
    DJHTTPResponseStateAborted,
    DJHTTPResponseStateClosed
};

@interface DJHTTPAsyncDataResponse()



@end

@implementation DJHTTPAsyncDataResponse

- (id)initWithConnection:(HTTPConnection *)connection allowChunking:(BOOL)allowChunking
{
    if ([self init]) {
        
    }
    
    return self;
}

- (void)appendData:(NSData *)data
{
    
}

- (void)finish
{
    
}

- (void)abort
{
    
}

@end
