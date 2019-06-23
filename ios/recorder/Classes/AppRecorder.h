//
//
//  AppRecorder.h
//
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface AppRecorder : NSObject<AVAudioRecorderDelegate>
typedef void (^AppCallback)(id error, id result);

+ (AppRecorder *)singletonManger;
//开始录音 参数
//  channel: String (stereo, mono, def: stereo) 录音通道  默认立体声
//  quality: String (low [8000Hz, 8bit] | standard [22050Hz, 16bit] | high [44100Hz, 16bit], def: standard)  录音质量
- (void)start:(NSDictionary *)options :(AppCallback)callBack;

//暂停录音
- (void)pause:(AppCallback)callBack;
//停止录音
- (void)stop:(AppCallback)callBack;
//关闭
- (void)close;

@end
