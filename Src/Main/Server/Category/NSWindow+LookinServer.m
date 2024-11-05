//
//  NSWindow+LookinServer.m
//  LookinServer
//
//  Created by JH on 11/5/24.
//

#import "NSWindow+LookinServer.h"

#if TARGET_OS_OSX

@implementation NSWindow (LookinServer)

- (NSView *)lks_rootView {
    return self.contentView.superview;
}

@end

#endif
