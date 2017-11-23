//
//  main.m
//  Exercise10
//
//  Created by Tống Đăng Tình on 11/23/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//
/*
 - Add a memory capability to the Calculator class from Program 4.6. Implement the following method declarations and test them
 
-(double) memoryClear;
-(double) memoryStore;
 -(double) memoryRecall;
 -(double) memoryAdd : (double) value;
 -(double) memorySubtruct: (double) value;
 */

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
    double accumulator;
}
-(void) clear;
-(void) setAccumulator: (double) value;
-(double) accumulator;
-(double) add: (double) value;
-(double) subtruct: (double) value;
-(double) multilpy: (double) value;
-(double ) divide: (double) value;
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecal;
-(double) memoryAdd: (double) value;
-(double) memorySubtruct: (double) value;
//-(double) memory;
@end

@implementation Calculator
double memory;
-(void) setAccumulator:(double)value
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
-(double)  accumulator
{
    return accumulator;
}


-(double) add:(double)value
{
    accumulator+=value;
    return accumulator;
}

-(double)   subtruct:(double)value

{
    accumulator-=value;
    return  accumulator;
}

-(double) multilpy:(double)value
{
    accumulator*=value;
    return accumulator;
}
-(double) divide:(double)value
{
    accumulator/=value;
    return accumulator;
}

///---------------
-(double) memoryClear
{
    memory=0;
    return memory;
    
}
-(double) memoryStore
{
    memory=accumulator;
    return memory;
}
-(double) memoryRecal
{
    accumulator=memory;
    return memory;
}
-(double) memoryAdd:(double)value
{
    memory+=value;
    return memory;
    
}
-(double) memorySubtruct:(double)value
{
    memory-=value;
    return memory;
    
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Calculator *myCalculator =[[Calculator alloc] init];
        
        [myCalculator setAccumulator:10]   ;
      //  [myCalculator memoryClear];
        NSLog(@"Memory store: %g",[myCalculator memoryStore]);
        NSLog(@"Memory recall: %g",[myCalculator memoryRecal]);
        NSLog(@"Memory addtion: %g",[myCalculator memoryAdd:10]);
        NSLog(@"Memory subtruction: %g",[myCalculator memorySubtruct:20]);
        NSLog(@"Memory clear: %g",[myCalculator memoryClear]);
        
        
    }
    return 0;
}
