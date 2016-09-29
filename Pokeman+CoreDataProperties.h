//
//  Pokeman+CoreDataProperties.h
//  Pokemon
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "Pokeman.h"


NS_ASSUME_NONNULL_BEGIN

@interface Pokeman (CoreDataProperties)

+ (NSFetchRequest<Pokeman *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) int64_t level;
@property (nullable, nonatomic, retain) NSSet<Type *> *type;

@end

@interface Pokeman (CoreDataGeneratedAccessors)

- (void)addTypeObject:(Type *)value;
- (void)removeTypeObject:(Type *)value;
- (void)addType:(NSSet<Type *> *)values;
- (void)removeType:(NSSet<Type *> *)values;

@end

NS_ASSUME_NONNULL_END
