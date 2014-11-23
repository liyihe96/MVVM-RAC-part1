//
//  RWTFlickrPhotoMetadata.m
//  RWTFlickrSearch
//
//  Created by Yihe Li on 11/22/14.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrPhotoMetadata.h"

@implementation RWTFlickrPhotoMetadata
- (NSString *)description {
    return [NSString stringWithFormat:@"metadata: comments=%lU, faves=%lU",
            self.comments, self.favorites];
}
@end
