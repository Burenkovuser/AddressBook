//
//  AddressCard.h
//  AddressBook
//
//  Created by Vasilii on 13.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property(copy, nonatomic) NSString *name, *email;

-(void) print;
-(void) setName:(NSString *)theName andEmail:(NSString*)theEmail;


@end
