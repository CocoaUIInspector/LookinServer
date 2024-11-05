//
//  NSWindow+LookinServer.h
//  LookinServer
//
//  Created by JH on 11/5/24.
//

#if TARGET_OS_OSX

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSWindow (LookinServer)
// NSWindow 的 rootView 是 contentView 的 superview，例如 NSThemeFrame
@property (nonatomic, readonly) NSView *lks_rootView;

@end

NS_ASSUME_NONNULL_END

#endif
