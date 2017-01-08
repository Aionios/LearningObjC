//
//  main.m
//  Directory
//
//  Created by HT Chang on 08/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *home = @"/Users/aion";
        NSString *direName = @"testdir";
        NSString *path;
        
        NSFileManager *fm;
        
        fm = [NSFileManager defaultManager];
        
        if ([fm changeCurrentDirectoryPath:home] == NO) {
            NSLog(@"Change to home directory failed");
            return 1;
        }
        
        path = [fm currentDirectoryPath];
        NSLog(@"Change to home: %@", path);
        
        if ([fm createDirectoryAtPath:direName withIntermediateDirectories:YES
                           attributes:nil error:NULL] == NO) {
            NSLog(@"Failed to create directory");
            return 2;
        }
        
        if ([fm moveItemAtPath:direName toPath:@"newDir" error:NULL] == NO) {
            NSLog(@"Directory rename failed");
            return 3;
        }
        
        if ([fm changeCurrentDirectoryPath:@"newDir"] == NO) {
            NSLog(@"Change directory failed");
            return 4;
        }
        
        path = [fm currentDirectoryPath];
        NSLog(@"Now in directory %@", path);
        NSLog(@"All operations were successful");
    }
    return 0;
}
