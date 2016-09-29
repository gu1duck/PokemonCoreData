//
//  Type+CoreDataProperties.h
//  Pokemon
//
//  Created by Jeremy Petter on 2016-09-29.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "Type.h"


NS_ASSUME_NONNULL_BEGIN

@interface Type (CoreDataProperties)

+ (NSFetchRequest<Type *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Pokeman *> *pokemon;
@property (nullable, nonatomic, retain) NSSet<Type *> *strongVs;
@property (nullable, nonatomic, retain) NSSet<Type *> *weakVs;

@end

@interface Type (CoreDataGeneratedAccessors)

- (void)addPokemonObject:(Pokeman *)value;
- (void)removePokemonObject:(Pokeman *)value;
- (void)addPokemon:(NSSet<Pokeman *> *)values;
- (void)removePokemon:(NSSet<Pokeman *> *)values;

- (void)addStrongVsObject:(Type *)value;
- (void)removeStrongVsObject:(Type *)value;
- (void)addStrongVs:(NSSet<Type *> *)values;
- (void)removeStrongVs:(NSSet<Type *> *)values;

- (void)addWeakVsObject:(Type *)value;
- (void)removeWeakVsObject:(Type *)value;
- (void)addWeakVs:(NSSet<Type *> *)values;
- (void)removeWeakVs:(NSSet<Type *> *)values;

@end

NS_ASSUME_NONNULL_END
