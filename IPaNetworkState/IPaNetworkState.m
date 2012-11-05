//
//  IPaNetworkState.m
//
//  Created by IPaPa on 12/6/1.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "IPaNetworkState.h"

@implementation IPaNetworkState
static NSInteger networkCounter = 0;
+(void)startNetworking
{
    networkCounter++;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}
+(void)endNetworking
{
    assert(networkCounter > 0);
    networkCounter -= 1;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = (networkCounter != 0);
}
@end
