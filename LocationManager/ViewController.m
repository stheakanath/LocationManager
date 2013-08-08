//
//  ViewController.m
//  LocationManager
//
//  Created by Sony Theakanath on 6/19/13.
//  Copyright (c) 2013 Sony Theakanath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *array = [[USLocation city] mutableCopy];
    NSMutableArray *array2 = [[USLocation zipcode] mutableCopy];
    
    NSArray *copy = [[USLocation city] copy];
    
    NSInteger index = [copy count] - 1;
    
    for (id object in [copy reverseObjectEnumerator]) {
        
        if ([array indexOfObject:object inRange:NSMakeRange(0, index)] != NSNotFound) {
            [array removeObjectAtIndex:index];
            [array2 removeObjectAtIndex:index];
        }
        index--;
    }
    
    NSMutableString *elements = [[NSMutableString alloc] initWithString:@"["];
    for(int x = 0; x < [array count]; x++) {
        [elements appendFormat:@"%@@\"%@\"",(x==0?@"":@", "),[array objectAtIndex:x]];
    }
    [elements appendString:@"];"];
        NSLog(@"%@", elements);
     NSLog(@"\n\n\n\n\nn\n\n\n\n\\n\nn\n\n\n\n\n\n\n\n\n\n\nn\n\n\n\n\n\n");
    
     elements = [[NSMutableString alloc] initWithString:@"["];
    for(int x = 0; x < [array2 count]; x++) {
        [elements appendFormat:@"%@@\"%@\"",(x==0?@"":@", "),[array2 objectAtIndex:x]];
    }
    [elements appendString:@"];"];
    NSLog(@"%@", elements);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
