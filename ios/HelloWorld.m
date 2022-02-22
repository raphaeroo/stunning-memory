//
//  HelloWorld.m
//  native_bridge
//
//  Created by Raphael Freitas da Silva on 22/02/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(HelloWorld, NSObject)
RCT_EXTERN_METHOD(ShowMessage:(NSString *)message duration:(double *)duration)
@end
