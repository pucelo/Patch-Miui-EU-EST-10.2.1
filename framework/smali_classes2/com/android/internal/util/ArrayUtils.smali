.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    :cond_7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1b

    if-nez p3, :cond_c

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object p1

    :cond_c
    array-length v0, p1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_18
    aput-object p2, v1, v0

    return-object v1

    :cond_1b
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    goto :goto_18
.end method

.method public static appendInt([II)[I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static appendInt([IIZ)[I
    .registers 8

    const/4 v4, 0x0

    if-nez p0, :cond_9

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    return-object v3

    :cond_9
    array-length v0, p0

    if-nez p2, :cond_17

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget v3, p0, v1

    if-ne v3, p1, :cond_14

    return-object p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    aput p1, v2, v0

    return-object v2
.end method

.method public static appendLong([JJ)[J
    .registers 10

    const/4 v6, 0x0

    if-nez p0, :cond_9

    const/4 v3, 0x1

    new-array v3, v3, [J

    aput-wide p1, v3, v6

    return-object v3

    :cond_9
    array-length v0, p0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_14

    return-object p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    invoke-static {p0, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    aput-wide p1, v2, v0

    return-object v2
.end method

.method public static cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :cond_8
    return-object v0
.end method

.method public static cloneOrNull([J)[J
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :cond_9
    return-object v0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static contains([CC)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return v2

    :cond_4
    array-length v3, p0

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_11

    aget-char v0, p0, v1

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    return v2
.end method

.method public static contains([II)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return v2

    :cond_4
    array-length v3, p0

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_11

    aget v0, p0, v1

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    return v2
.end method

.method public static contains([JJ)Z
    .registers 10

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return v3

    :cond_4
    array-length v4, p0

    move v2, v3

    :goto_6
    if-ge v2, v4, :cond_13

    aget-wide v0, p0, v2

    cmp-long v5, v0, p1

    if-nez v5, :cond_10

    const/4 v2, 0x1

    return v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return v3
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static containsAll([C[C)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return v5

    :cond_5
    array-length v3, p1

    move v1, v2

    :goto_7
    if-ge v1, v3, :cond_15

    aget-char v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([CC)Z

    move-result v4

    if-nez v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return v5
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return v5

    :cond_5
    array-length v3, p1

    move v1, v2

    :goto_7
    if-ge v1, v3, :cond_15

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return v5
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    array-length v3, p1

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_15

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static convertToIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-object v0
.end method

.method public static defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_7

    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    :cond_21
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    :cond_2a
    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static equals([B[BI)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-gez p2, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_a
    if-ne p0, p1, :cond_d

    return v4

    :cond_d
    if-eqz p0, :cond_11

    if-nez p1, :cond_12

    :cond_11
    return v3

    :cond_12
    array-length v1, p0

    if-lt v1, p2, :cond_11

    array-length v1, p1

    if-lt v1, p2, :cond_11

    const/4 v0, 0x0

    :goto_19
    if-ge v0, p2, :cond_25

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_22

    return v3

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v2, -0x1

    if-nez p0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_14

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static isEmpty([B)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static isEmpty([I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static isEmpty([J)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static isEmpty([Z)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_5

    return v5

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz p0, :cond_11

    if-nez p1, :cond_12

    :cond_11
    return v6

    :cond_12
    if-ne v2, v3, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_2d

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_2b

    move v4, v5

    :goto_27
    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2b
    move v4, v6

    goto :goto_27

    :cond_2d
    xor-int/lit8 v4, v0, 0x1

    return v4
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_33

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return-object p1

    :cond_b
    array-length v1, p1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_33

    aget-object v3, p1, v0

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    return-object v5

    :cond_1b
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_33
    return-object p1
.end method

.method public static removeInt([II)[I
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_5

    return-object v3

    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_27

    aget v3, p0, v1

    if-ne v3, p1, :cond_24

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    if-lez v1, :cond_16

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_23

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_23
    return-object v2

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_27
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .registers 10

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_5

    return-object v3

    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_26

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [J

    if-lez v1, :cond_18

    invoke-static {p0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_25

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_25
    return-object v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_5

    return-object v3

    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    aget-object v3, p0, v1

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [Ljava/lang/String;

    if-lez v1, :cond_1a

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_27

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    return-object v2

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    return-object p0
.end method

.method public static size([Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    array-length v0, p0

    goto :goto_3
.end method

.method public static total([J)J
    .registers 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_e

    const/4 v4, 0x0

    array-length v5, p0

    :goto_6
    if-ge v4, v5, :cond_e

    aget-wide v2, p0, v4

    add-long/2addr v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v0

    :cond_6
    array-length v0, p0

    if-ne v0, p1, :cond_a

    return-object p0

    :cond_a
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v4, 0x0

    return v4

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x1

    :goto_b
    if-gt v1, v2, :cond_2f

    :goto_d
    if-ge v1, v3, :cond_1e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    :goto_1e
    if-le v2, v1, :cond_2d

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_2d
    if-lt v1, v2, :cond_39

    :cond_2f
    add-int/lit8 v0, v3, -0x1

    :goto_31
    if-lt v0, v1, :cond_41

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    :cond_39
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_41
    sub-int v4, v3, v1

    return v4
.end method
