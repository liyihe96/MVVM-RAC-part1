//
//  RWTViewModelServicesImpl.h
//  RWTFlickrSearch
//
//  Created by Yihe Li on 11/22/14.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

@import Foundation;
#import "RWTViewModelServices.h"

@interface RWTViewModelServicesImpl : NSObject <RWTViewModelServices>

- (instancetype)initWithNavigationController: (UINavigationController *)navController;

@end