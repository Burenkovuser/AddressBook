//
//  AddressBook.h
//  AddressBook
//
//  Created by Vasilii on 13.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property(nonatomic, copy) NSString *bookName;
@property(nonatomic, strong) NSMutableArray *book;

-(instancetype) intitWhithName:(NSString *) name; //instancetype возвращает объект того же класса, как тот что получил сообщение
-(void) addCard:(AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(AddressCard*) looking:(NSString*) theName; //поиск адресной краточки по имени

@end
