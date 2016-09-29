//
//  ViewController.m
//  Pokemon
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "ViewController.h"
//#import "AppDelegate.h"

#import "Pokeman.h"
#import "Type.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.context = [(AppDelegate *)[UIApplication sharedApplication].delegate persistentContainer].viewContext;

//    Type *fireType = [NSEntityDescription insertNewObjectForEntityForName:@"Type" inManagedObjectContext:self.context];
//    fireType.name = @"fire";
//
//    Type *waterType = [NSEntityDescription insertNewObjectForEntityForName:@"Type" inManagedObjectContext:self.context];
//    waterType.name = @"water";
//
//    Type *grassType = [NSEntityDescription insertNewObjectForEntityForName:@"Type" inManagedObjectContext:self.context];
//    grassType.name = @"grass";
//
//    [fireType addWeakVsObject:waterType];
//    [waterType addWeakVsObject:grassType];
//    [grassType addWeakVsObject:fireType];
//
//    NSError *error;
//    [self.context save:&error];
//
//    if (!error) {
//        NSLog(@"saved!!");
//    }

    NSFetchRequest *fetchRequest = [Type fetchRequest];
    NSSortDescriptor *nameDescending = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:NO];

    NSString *fireName = @"fire";
    NSString *ending = @"ss";

    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(name like %@) OR (name ENDSWITH %@)", fireName, ending];
    fetchRequest.predicate = predicate;

    fetchRequest.sortDescriptors = @[nameDescending];


    NSFetchedResultsController *frc = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.context sectionNameKeyPath:nil cacheName:nil];


    NSError *fetchError;

    [frc performFetch:&fetchError];

    NSLog(@"%@",frc.fetchedObjects);

    Type *fetchedType1 = frc.fetchedObjects[0];
    NSString *type1Name = fetchedType1.name;

    NSLog(@"%@",frc.fetchedObjects);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
