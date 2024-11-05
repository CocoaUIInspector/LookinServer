#ifdef SHOULD_COMPILE_LOOKIN_SERVER 

//
//  UIViewController+LookinServer.h
//  LookinServer
//
//  Created by Li Kai on 2019/4/22.
//  https://lookin.work
//

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#endif

#if TARGET_OS_OSX
#import <AppKit/AppKit.h>
#endif

#import "LookinDefines.h"

@interface LookinViewController (LookinServer)

+ (LookinViewController *)lks_visibleViewController;

@end

#endif /* SHOULD_COMPILE_LOOKIN_SERVER */
