//
//  Type+CoreDataProperties.m
//  Pokemon
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "Type+CoreDataProperties.h"

@implementation Type (CoreDataProperties)

+ (NSFetchRequest<Type *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Type"];
}

@dynamic name;
@dynamic pokemon;
@dynamic strongVs;
@dynamic weakVs;

@end
