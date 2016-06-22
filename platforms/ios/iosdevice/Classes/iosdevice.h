//
//  iosdevice.h
//  iosdevice
//
//  Created by Wisemen on 22/06/2016.
//
//

#import <Cordova/CDV.h>
#import <Foundation/Foundation.h>


@interface iosdevice : CDVPlugin
{
    NSString* callbackId;
}


@property (nonatomic,copy) NSString* callbackId;

- (void)GetDevice:(CDVInvokedUrlCommand*)command;


//-(void) GetDevice :(CDVInvokedUrlCommand*) command;
//
//-(void) GetDeviceDetails:(NSString*) devicedetails;
//@property (strong, nonatomic) CDVInvokedUrlCommand* latestCommand;

@end
