.class public Lorg/apache/miui/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_c

    return-object v6

    :cond_c
    invoke-virtual {p0, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {p1, v3, v6}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5

    :cond_17
    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_26

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v5

    return-object v5

    :cond_26
    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    return-object v4
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    const/4 v1, 0x0

    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_13

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_12
    return-object v1

    :cond_13
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_1e

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    :cond_1e
    return-object v1
.end method

.method private static getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    array-length v6, v1

    move v5, v4

    :goto_e
    if-ge v5, v6, :cond_51

    aget-object v3, v1, v5

    const/4 v2, 0x0

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2f

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    :goto_1e
    invoke-static {v2, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {v0, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object v0, v3

    :cond_2b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e

    :cond_2f
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_37

    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    goto :goto_1e

    :cond_37
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected generic interface type found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_51
    if-eqz v0, :cond_54

    return-object v0

    :cond_54
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4
.end method

.method public static getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    :goto_f
    return-object v1

    :cond_10
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_f
.end method

.method public static getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 4

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_e
    return-object v0
.end method

.method public static getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 5

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    :goto_f
    return-object v1

    :cond_10
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_f
.end method

.method private static getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wait... What!? Type of rawType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_8

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_8
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_13

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v4

    return-object v4

    :cond_13
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3d

    if-nez p1, :cond_1a

    return-object v5

    :cond_1a
    move-object v4, p0

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Class;

    if-nez v4, :cond_26

    return-object v5

    :cond_26
    check-cast v0, Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2f

    return-object v5

    :cond_2f
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    if-nez v2, :cond_38

    return-object v5

    :cond_38
    invoke-static {v2, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    return-object v4

    :cond_3d
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_55

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    return-object v4

    :cond_55
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_5a

    return-object v5

    :cond_5a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1

    :cond_1a
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_1e
    if-nez p2, :cond_33

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_32

    invoke-virtual {p1, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_32
    return-object v0

    :cond_33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_25

    :cond_39
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    return-object v9

    :cond_c
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_41

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v3, v8, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    :goto_1f
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    const/4 v1, 0x0

    :goto_28
    array-length v8, v6

    if-ge v1, v8, :cond_51

    aget-object v4, v5, v1

    aget-object v9, v6, v1

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    :goto_3b
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_41
    if-nez p2, :cond_49

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    goto :goto_1f

    :cond_49
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1f

    :cond_4f
    move-object v8, v4

    goto :goto_3b

    :cond_51
    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    return-object v7

    :cond_58
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v8, p1, v7}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8
.end method

.method public static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_d

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_d
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_18

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_18
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_31

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_2c
    invoke-static {v1, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_31
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_4f

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    :goto_3c
    if-ge v1, v3, :cond_4e

    aget-object v0, v2, v1

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4e
    return-object v5

    :cond_4f
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_6d

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    :goto_5a
    if-ge v1, v3, :cond_6c

    aget-object v0, v2, v1

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_6c
    return-object v5

    :cond_6d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "found an unhandled type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArrayType(Ljava/lang/reflect/Type;)Z
    .registers 2

    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_d

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_c
    return v1

    :cond_d
    if-nez p1, :cond_10

    return v2

    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    return v1

    :cond_17
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_22

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    return v1

    :cond_22
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_31

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    return v1

    :cond_31
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_4c

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_3d
    if-ge v3, v5, :cond_4b

    aget-object v0, v4, v3

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_48

    return v1

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_4b
    return v2

    :cond_4c
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_6f

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    :cond_6c
    :goto_6c
    return v1

    :cond_6d
    move v1, v2

    goto :goto_6c

    :cond_6f
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_74

    return v2

    :cond_74
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "found an unhandled type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    return v8

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    return v8

    :cond_f
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_29

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v3

    :cond_28
    return v3

    :cond_29
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_38

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v3

    return v3

    :cond_38
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_53

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_44
    if-ge v4, v6, :cond_52

    aget-object v0, v5, v4

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_4f

    return v8

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_52
    return v3

    :cond_53
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_6e

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_5f
    if-ge v4, v6, :cond_6d

    aget-object v0, v5, v4

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_6a

    return v8

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_6d
    return v3

    :cond_6e
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_73

    return v3

    :cond_73
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "found an unhandled type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez p0, :cond_6

    return v10

    :cond_6
    if-nez p1, :cond_9

    return v8

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    return v10

    :cond_10
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, v4, v9}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1b

    return v8

    :cond_1b
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_22

    return v10

    :cond_22
    invoke-static {p1, v4, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    if-eqz v2, :cond_2e

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2e

    instance-of v7, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_61

    invoke-static {v2, v5, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v7

    :goto_5c
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2e

    return v8

    :cond_61
    move v7, v8

    goto :goto_5c

    :cond_63
    return v10
.end method

.method public static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_6

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_d

    :cond_6
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    return v0

    :cond_d
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_18
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_23

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_23
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_2e
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_39

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    return v6

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v6

    :cond_f
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_2a

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-static {v2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_1c
    if-ge v2, v4, :cond_2a

    aget-object v0, v1, v2

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_27

    return v6

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2a
    instance-of v2, p0, Ljava/lang/Class;

    if-nez v2, :cond_3a

    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_3a

    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_3a

    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_3b

    :cond_3a
    return v3

    :cond_3b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found an unhandled type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v7, 0x1

    return v7

    :cond_4
    if-nez p1, :cond_8

    const/4 v7, 0x0

    return v7

    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    return v7

    :cond_10
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v7, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_69

    move-object v6, p0

    check-cast v6, Ljava/lang/reflect/WildcardType;

    invoke-static {v6}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v6}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v7, 0x0

    array-length v9, v4

    move v8, v7

    :goto_2a
    if-ge v8, v9, :cond_47

    aget-object v2, v4, v8

    invoke-static {v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v7, 0x0

    array-length v10, v5

    :goto_34
    if-ge v7, v10, :cond_43

    aget-object v0, v5, v7

    invoke-static {v0, v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_40

    const/4 v7, 0x0

    return v7

    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_43
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2a

    :cond_47
    const/4 v7, 0x0

    array-length v9, v3

    move v8, v7

    :goto_4a
    if-ge v8, v9, :cond_67

    aget-object v2, v3, v8

    invoke-static {v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v7, 0x0

    array-length v10, v1

    :goto_54
    if-ge v7, v10, :cond_63

    aget-object v0, v1, v7

    invoke-static {v2, v0, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_60

    const/4 v7, 0x0

    return v7

    :cond_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    :cond_63
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_4a

    :cond_67
    const/4 v7, 0x1

    return v7

    :cond_69
    const/4 v7, 0x0

    array-length v8, v4

    :goto_6b
    if-ge v7, v8, :cond_7e

    aget-object v2, v4, v7

    invoke-static {v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {p0, v9, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_7b

    const/4 v7, 0x0

    return v7

    :cond_7b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    :cond_7e
    const/4 v7, 0x0

    array-length v8, v3

    :goto_80
    if-ge v7, v8, :cond_93

    aget-object v2, v3, v7

    invoke-static {v2, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v9, p0, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_90

    const/4 v7, 0x0

    return v7

    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    :cond_93
    const/4 v7, 0x1

    return v7
.end method

.method public static isInstance(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    if-nez p0, :cond_16

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13

    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_13
.end method

.method private static mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_d

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v1, p2}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    :goto_22
    array-length v7, v3

    if-ge v0, v7, :cond_43

    aget-object v4, v6, v0

    aget-object v2, v3, v0

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    invoke-interface {p2, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_43
    return-void
.end method

.method public static normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 11

    const/4 v5, 0x0

    array-length v4, p0

    const/4 v6, 0x2

    if-ge v4, v6, :cond_6

    return-object p0

    :cond_6
    new-instance v3, Ljava/util/HashSet;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    array-length v7, p0

    move v6, v5

    :goto_e
    if-ge v6, v7, :cond_2f

    aget-object v1, p0, v6

    const/4 v0, 0x0

    array-length v8, p0

    move v4, v5

    :goto_15
    if-ge v4, v8, :cond_23

    aget-object v2, p0, v4

    if-eq v1, v2, :cond_2c

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_2c

    const/4 v0, 0x1

    :cond_23
    if-nez v0, :cond_28

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_e

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2f
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Type;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Type;

    return-object v4
.end method

.method private static substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_28

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missing assignment type for type variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    return-object v0

    :cond_29
    return-object p0
.end method

.method public static typesSatisfyVariables(Ljava/util/Map;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    invoke-static {v4}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_27
    if-ge v5, v8, :cond_9

    aget-object v0, v7, v5

    invoke-static {v0, p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v3, v9, p0}, Lorg/apache/miui/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_36

    return v6

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_39
    const/4 v5, 0x1

    return v5
.end method
