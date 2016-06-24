//
//  iosdevice.m
//  iosdevice
//
//  Created by Wisemen on 22/06/2016.
//
//

#import "iosdevice.h"
#import<AdSupport/ASIdentifierManager.h>

@implementation iosdevice

@synthesize callbackId;


-(void) GetDevice:(CDVInvokedUrlCommand *)command

{
    
     self.callbackId = command.callbackId;
    
    
    NSString *DeviceName ;
    NSString * uuid;
    
    
    UIDevice *deviceInfo = [UIDevice currentDevice];
    
    DeviceName = deviceInfo.name;
  //  uuid = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];

    
    
    DeviceName = [DeviceName stringByAppendingString:@","];
    
    DeviceName = [DeviceName stringByAppendingString:uuid
                  ];
    
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:DeviceName];
    [self.commandDelegate sendPluginResult:result callbackId:self.callbackId];
    
   
}




@end
