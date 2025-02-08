#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 0; i < 100000; i++) {
            @autoreleasepool { // Create a new autorelease pool for each iteration
                NSString *string = [NSString stringWithFormat:@