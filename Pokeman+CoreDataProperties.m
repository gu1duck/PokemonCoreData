//
//  Pokeman+CoreDataProperties.m
//  Pokemon
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "Pokeman+CoreDataProperties.h"

@implementation Pokeman (CoreDataProperties)

+ (NSFetchRequest<Pokeman *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Pokeman"];
}

@dynamic name;
@dynamic level;
@dynamic type;

@end
