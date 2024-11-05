//
//  NSValue+Lookin.m
//  LookinServer
//
//  Created by JH on 2024/11/5.
//

#import "NSValue+Lookin.h"

NSString *NSStringFromInsets(LookinInsets insets) {
    return [NSString stringWithFormat:@"{%.*g, %.*g, %.*g, %.*g}", insets.top, insets.left, insets.bottom, insets.right];
}
#if TARGET_OS_OSX
NSString *NSStringFromCGAffineTransform(CGAffineTransform transform) {
    return [NSString stringWithFormat:@"[%.*g, %.*g, %.*g, %.*g, %.*g, %.*g]", transform.a, transform.b, transform.c, transform.d, transform.tx, transform.ty];
}
NSString *NSStringFromCGVector(CGVector vector) {
    return [NSString stringWithFormat:@"{%.*g, %.*g}", vector.dx, vector.dy];
}
NSString *NSStringFromCGRect(CGRect rect) {
    return NSStringFromRect(rect);
}
NSString *NSStringFromCGPoint(CGPoint point) {
    return NSStringFromPoint(point);
}
NSString *NSStringFromCGSize(CGSize size) {
    return NSStringFromSize(size);
}
NSString *NSStringFromDirectionalEdgeInsets(NSDirectionalEdgeInsets insets) {
    return [NSString stringWithFormat:@"{%.*g, %.*g, %.*g, %.*g}", insets.top, insets.leading, insets.bottom, insets.trailing];
}
#endif
@implementation NSValue (Lookin)
#if TARGET_OS_OSX
+ (NSValue *)valueWithCGVector:(CGVector)vector {
    return [self valueWithBytes:&vector objCType:@encode(CGVector)];
}

+ (NSValue *)valueWithCGRect:(CGRect)rect {
    return [self valueWithRect:rect];
}

+ (NSValue *)valueWithCGSize:(CGSize)size {
    return [self valueWithSize:size];
}

+ (NSValue *)valueWithCGPoint:(CGPoint)point {
    return [self valueWithPoint:point];
}

+ (NSValue *)valueWithCGAffineTransform:(CGAffineTransform)transform {
    return [self valueWithBytes:&transform objCType:@encode(CGAffineTransform)];
}

- (CGAffineTransform)CGAffineTransformValue {
    CGAffineTransform transform;
    [self getValue:&transform];
    return transform;
}

- (CGVector)CGVectorValue {
    CGVector vector;
    [self getValue:&vector];
    return vector;
}

- (CGRect)CGRectValue {
    return [self rectValue];
}

- (CGPoint)CGPointValue {
    return [self pointValue];
}

- (CGSize)CGSizeValue {
    return [self sizeValue];
}
#endif
+ (NSValue *)valueWithInsets:(LookinInsets)insets {
    return [self valueWithEdgeInsets:insets];
}

- (LookinInsets)InsetsValue {
    return [self edgeInsetsValue];
}

@end
