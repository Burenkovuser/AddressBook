//
//  AddressCard.m
//  AddressBook
//
//  Created by Vasilii on 13.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void)print {
    NSLog(@"============================");
    NSLog(@"|                          |");
    NSLog(@"|  %-31s",[name UTF8String]);
    NSLog(@"| %-31s",[email UTF8String]);
    NSLog(@"|                          |");
    NSLog(@"|                          |");
    NSLog(@"|                          |");
    NSLog(@"|    0              0      |");
    NSLog(@"============================");
}

-(void)setName:(NSString *)theName andEmail:(NSString *)theEmail {
    self.name = theName;
    self.email = theEmail;
}

-(NSComparisonResult)compareNames:(id)element {
    return [name compare:[element name]];
}

@end
