//
//  UMengUpdatePlugin.m
//  爱尔生活
//
//  Created by cdm on 2/1/16.
//
//

#import "UMengUpdatePlugin.h"
#import "UMCheckUpdate.h"

@implementation UMengUpdatePlugin

- (void)initApp:(CDVInvokedUrlCommand *)command{
    NSArray *arguments = command.arguments;
    NSString *androidAppkey = [arguments objectAtIndex:0];
    NSString *iosAppkey = [arguments objectAtIndex:1];
   
    [UMCheckUpdate checkUpdateWithAppkey:iosAppkey channel:@"Umeng"];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
