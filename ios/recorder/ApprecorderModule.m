//
//  ApprecorderModule.m
//  Pods
//

#import "ApprecorderModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import "AppRecorder.h"

@interface ApprecorderModule ()

@end

@implementation ApprecorderModule

WX_PlUGIN_EXPORT_MODULE(recorder, ApprecorderModule)
WX_EXPORT_METHOD(@selector(start::))
WX_EXPORT_METHOD(@selector(pause:))
WX_EXPORT_METHOD(@selector(stop:))

- (void)start:(NSDictionary *)options :(WXModuleCallback)callback{
    [[AppRecorder singletonManger] start:options :^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)pause:(WXModuleCallback)callback{
    [[AppRecorder singletonManger] pause:^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)stop:(WXModuleCallback)callback{
    [[AppRecorder singletonManger] stop:^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

- (void)dealloc{
    [[AppRecorder singletonManger] close];
}

@end
