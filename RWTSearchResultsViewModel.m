//
//  RWTSearchResultsViewModel.m
//  RWTFlickrSearch
//
//  Created by Yihe Li on 11/22/14.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import "RWTSearchResultsViewModel.h"

@implementation RWTSearchResultsViewModel

- (instancetype)initWithSearchResult:(RWTFlickrSearchResults *)results services:(id<RWTViewModelServices>)services
{
    if (self = [super init]) {
        _title = results.searchString;
        _searchResults = results.photos;
    }
    return self;
}

@end
