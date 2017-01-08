//
//  main.m
//  File
//
//  Created by HT Chang on 07/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fName = @"/Users/aion/testfile";
        NSFileManager *fm;
        NSDictionary *attr;
        
        NSData *fileData;
        
        fm = [NSFileManager defaultManager];
        
        if ([fm fileExistsAtPath:fName] == NO) {
            NSLog(@"File not exists");
            return 1;
        }
        
        if ([fm copyItemAtPath:fName toPath:@"/Users/aion/newfile" error:NULL]
            == NO) {
            NSLog(@"Failed to copy file");
            return 2;
        }
        
        if ([fm contentsEqualAtPath:fName andPath:@"/Users/aion/newfile"]
            == NO) {
            NSLog(@"Files are not equal");
            return 3;
        }
        
        if ([fm moveItemAtPath:@"/Users/aion/newfile"
                        toPath:@"/Users/aion/newfile2" error:NULL]
            == NO) {
            NSLog(@"Failed to rename file");
            return 4;
        }
        if ((attr = [fm attributesOfItemAtPath:@"/Users/aion/newfile2"
                                         error:NULL])
            == nil) {
            NSLog(@"Failed to get file attributes");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes",
              [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        if ([fm removeItemAtPath:fName error:NULL] == NO) {
            NSLog(@"File removal failed");
            return 6;
        }
        
        NSLog(@"All operation are successful");
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"/Users/aion/newfile2"
                                               encoding:NSUTF8StringEncoding
                                                  error:NULL]);
        
        fileData = [fm contentsAtPath:@"/Users/aion/newfile2"];
        if (fileData == nil) {
            NSLog(@"File read failed");
            return 7;
        }
        
        if ([fm createFileAtPath:@"/Users/aion/newfile3" contents:fileData
                      attributes:nil] == NO) {
            NSLog(@"Failed to create the copy");
            return 8;
            
        }
        
        NSLog(@"File copy was successful");
        
    }
    return 0;
}
