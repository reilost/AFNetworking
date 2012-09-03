//
//  AFProtobufRequestOperation.m
//  iPhoneClient
//
//  Created by Reilost on 9/3/12.
//  Copyright (c) 2012 北京严肃科技有限公司. All rights reserved.
//

#import "AFProtobufRequestOperation.h"
static dispatch_queue_t af_pb_request_operation_processing_queue;
static dispatch_queue_t pb_request_operation_processing_queue() {
    if (af_pb_request_operation_processing_queue == NULL) {
        af_pb_request_operation_processing_queue = dispatch_queue_create("com.reilost.pb-request.processing", 0);
    }
    
    return af_pb_request_operation_processing_queue;
}

@interface AFProtobufRequestOperation ()
@property (readwrite, nonatomic, retain) id responsePB;
@property (readwrite, nonatomic, retain) NSError *PBError;
@end

@implementation AFProtobufRequestOperation
@synthesize responsePB = _responsePB;
@synthesize PBError = _PBError;
@end
