//
//  NSData+CocoaHTTPServer.h
//  DJProxyServer
//
//  Created by Jing Dai on 8/3/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (CocoaHTTPServer)

- (NSData *)dataFromDispatch:(dispatch_data_t)data;
- (dispatch_data_t)dispatchDataOnQueue:(dispatch_queue_t)queue;

@end
