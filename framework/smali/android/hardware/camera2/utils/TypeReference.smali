.class public abstract Landroid/hardware/camera2/utils/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;,
        Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mHash:I

.field private final mType:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/camera2/utils/TypeReference;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    iget-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Including a type variable in a type reference is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    iget-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Including a type variable in a type reference is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Landroid/hardware/camera2/utils/TypeReference;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/TypeReference;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static containsTypeVariable(Ljava/lang/reflect/Type;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_5

    return v6

    :cond_5
    instance-of v5, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_a

    return v4

    :cond_a
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_22

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_19

    return v4

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v4

    return v4

    :cond_22
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3e

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_2f
    if-ge v5, v8, :cond_3d

    aget-object v0, v7, v5

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v9

    if-eqz v9, :cond_3a

    return v4

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_3d
    return v6

    :cond_3e
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_58

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable([Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_57

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable([Ljava/lang/reflect/Type;)Z

    move-result v4

    :cond_57
    return v4

    :cond_58
    return v6
.end method

.method private static containsTypeVariable([Ljava/lang/reflect/Type;)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return v2

    :cond_4
    array-length v3, p0

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_15

    aget-object v0, p0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return v2
.end method

.method public static createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<*>;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static final getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    const-string/jumbo v0, "type must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_11
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    return-object v0

    :cond_17
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_22

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    :cond_22
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO: support wild card components"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Type variables are not allowed in type references"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled branch to get component type for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static final getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_12
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1f

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_1f
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_32

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_32
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_41

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType([Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_41
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Type variables are not allowed in type references"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled branch to get raw type for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static final getRawType([Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-object v4

    :cond_4
    const/4 v2, 0x0

    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_14

    aget-object v1, p0, v2

    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    return-object v4
.end method

.method private static toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_11

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    return-void

    :cond_11
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_27

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    goto :goto_10

    :cond_27
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_43

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    goto :goto_10

    :cond_43
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_58

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    const-string/jumbo v3, "[]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_58
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method

.method private static toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v1, p0

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-string/jumbo v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_24

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_21

    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    const-string/jumbo v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/camera2/utils/TypeReference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    check-cast p1, Landroid/hardware/camera2/utils/TypeReference;

    iget-object v1, p1, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getComponentType()Landroid/hardware/camera2/utils/TypeReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Landroid/hardware/camera2/utils/TypeReference;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v1

    :cond_d
    return-object v1
.end method

.method public final getRawType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TypeReference<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
