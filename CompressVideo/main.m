//
//  main.m
//  CompressVideo
//
//  Created by developer on 2019/2/22.
//  Copyright © 2019 developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include "libavcodec/avcodec.h"
#include "libavformat/avformat.h"

int main(int argc, char * argv[]) {
    av_register_all();
    AVFormatContext *avformatContext=NULL;
    const char* mp4Path=[[[NSBundle mainBundle] pathForResource:@"test" ofType:@"mp4"] UTF8String];

    
    int ret=avformat_open_input(&avformatContext, mp4Path, NULL, NULL);
    NSLog(@"open input result:%d",ret);
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
