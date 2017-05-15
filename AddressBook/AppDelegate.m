//
//  AppDelegate.m
//  AddressBook
//
//  Created by Vasilii on 13.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "AddressCard.h"
#import "AddressBook.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *aName = @"Bob White";
    NSString *aEmail = @"bob@gmail.com";
    NSString *bName = @"Anna Gold";
    NSString *bEmail = @"anna@gmail.com";
    NSString *cName = @"Stenly Morgan";
    NSString *cEmail = @"stenly@gmail.com";
    NSString *dName = @"Eva Black";
    NSString *dEmail = @"eva@gmali.com";
    
    
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    
    //создам новую адрессную книгу
    AddressBook *myBook = [[AddressBook alloc] intitWhithName:@"Адресная книга Кинга"];
    NSLog(@"Число записей в адрессной книге после создания %i",[myBook entries]);
    
    AddressCard *myCard;
    
    [card1 setName:aName andEmail:aEmail];
    [card2 setName:bName andEmail:bEmail];
    [card3 setName:cName andEmail:cEmail];
    [card4 setName:dName andEmail:dEmail];
    
    //Добавляем карточки в адрессную книгу
    [myBook addCard:card1];
    [myBook addCard:card2];
    [myBook addCard:card3];
    [myBook addCard:card4];

    
    NSLog(@"Число записей в адресной книге после добавления карточек: %i", [myBook entries]);
    
    //Перечисляем все записи в книге
    [myBook list];
    
    //Ищем человека по имени
    NSLog(@"Поиск:Anna Gold");
    myCard = [myBook looking:@"anna gold"];
    
    if(myCard != nil)
        [myCard print];
    else
        NSLog(@"Не обнаружена");
    
    //Пробуем другой поиск
    NSLog(@"Поиск: Petr Black");
    myCard = [myBook looking:@"petr black"];
    
    if(myCard != nil)
        [myCard print];
    else
        NSLog(@"Не обнаружена");

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
