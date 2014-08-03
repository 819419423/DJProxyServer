//
//  DJHTTPAsyncDataResponse.h
//  DJProxyServer
//
//  Created by Jing Dai on 8/3/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTPResponse.h"
#import "HTTPConnection.h"

@interface DJHTTPAsyncDataResponse : NSObject

- (id)initWithConnection:(HTTPConnection *)connection allowChunking:(BOOL)allowChunking;
- (void)appendData:(NSData *)data;
- (void)abort;
- (void)finish;

@end
