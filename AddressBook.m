//
//  AddressBook.m
//  AddressBook
//
//  Created by Vasilii on 13.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//создаем новую адресную книгу и присваеваем ей её имя
-(instancetype)intitWhithName:(NSString *)name {
    
    //self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}
-(instancetype)init {
    return [self intitWhithName:@"NoName"];
}

-(void)addCard:(AddressCard *)theCard {
    [book addObject:theCard];
}

-(NSUInteger)entries {
    return [book count];
}

-(void)list {
    NSLog(@"========Contents of:%@========", bookName);
    for (AddressCard *theCard in book)
        NSLog(@"%-20s %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    NSLog(@"==============================");
}

-(AddressCard *)looking:(NSString *)theName {
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame)
            return nextCard;
       
        return nil;
}

-(void)removeCard:(AddressCard *)theCard {
    [book removeObjectIdenticalTo:theCard];
}

-(void)sort {
    [book sortUsingSelector:@selector(compareNames:)];
}

@end
