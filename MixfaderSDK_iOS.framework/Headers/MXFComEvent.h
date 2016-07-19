//
//  MXFComEvent.h
//  MixfaderSDK
//
//  Created by Jean-baptiste Fabre on 13/06/2016.
//  Copyright © 2016 djit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MXFTypes.h"

@interface MXFComEvent : NSObject

@property (nonatomic, assign, readonly) MXFCommunicationEventType type;
@property (nonatomic, assign, readonly) NSInteger size;
@property (nonatomic, assign, readonly) NSInteger identifier;

- (instancetype)initWithString:(NSString*)string identifier:(NSInteger)identifier;

- (instancetype)initWithRawData:(NSData *)data identifier:(NSInteger)identifier;

- (instancetype)initWithInt:(int)intValue identifier:(NSInteger)identifier;

- (instancetype)initWithIntArray:(NSArray *)intArray identifier:(NSInteger)identifier;

- (instancetype)initWithDouble:(double)doubleValue identifier:(NSInteger)identifier;

- (instancetype)initWithDoubleArray:(NSArray *)doubleArray identifier:(NSInteger)identifier;

- (instancetype)initWithFloat:(float)floatValue identifier:(NSInteger)identifier;

- (instancetype)initWithFloatArray:(NSArray *)floatArray identifier:(NSInteger)identifier;

- (instancetype)initWithBoolean:(BOOL)booleanValue identifier:(NSInteger)identifier;

- (instancetype)initWithBoolearArray:(NSArray *)BooleanArray identifier:(NSInteger)identifier;

- (id)value;

- (Class)classValue;


@end
