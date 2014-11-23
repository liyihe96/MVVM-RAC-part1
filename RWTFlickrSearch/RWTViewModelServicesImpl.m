//
//  RWTViewModelServicesImpl.m
//  RWTFlickrSearch
//
//  Created by Yihe Li on 11/22/14.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import "RWTViewModelServicesImpl.h"
#import "RWTFlickrSearchImpl.h"
#import "RWTSearchResultsViewController.h"

@interface RWTViewModelServicesImpl ()

@property (strong, nonatomic) RWTFlickrSearchImpl *searchService;
@property (strong, nonatomic) UINavigationController *navController;

@end

@implementation RWTViewModelServicesImpl

- (instancetype)init {
    if (self = [super init]) {
        _searchService = [RWTFlickrSearchImpl new];
    }
    return self;
}

- (instancetype)initWithNavigationController:(UINavigationController *)navController
{
    if(self = [super init]) {
        _searchService = [RWTFlickrSearchImpl new];
        _navController = navController;
    }
    return self;
}

- (id<RWTFlickrSearch>)getFlickrSearchService {
    return self.searchService;
}

- (void)pushViewModel:(id)viewModel
{
    id viewController;
    if ([viewModel isKindOfClass:[RWTSearchResultsViewModel class]]) {
        viewController = [[RWTSearchResultsViewController alloc] initWithViewModel:viewModel];
    } else {
        NSLog(@"unknown type of view model pushed");
    }
    [self.navController pushViewController:viewController animated:YES];
}

@end