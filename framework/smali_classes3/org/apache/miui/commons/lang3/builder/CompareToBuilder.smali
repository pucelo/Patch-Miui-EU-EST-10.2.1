.class public Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v3, 0x0

    :goto_9
    array-length v4, v2

    if-ge v3, v4, :cond_5b

    iget v4, p3, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v4, :cond_5b

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4e

    if-nez p4, :cond_37

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4e

    :cond_37
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4e

    :try_start_43
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    :try_end_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_4e} :catch_51

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catch_51
    move-exception v0

    new-instance v4, Ljava/lang/InternalError;

    const-string/jumbo v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5b
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_1e
    new-instance v3, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    :goto_2a
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3e

    if-eq v2, p3, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_2a

    :cond_3e
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v1, :cond_6

    return-object p0

    :cond_6
    if-ge p1, p2, :cond_c

    const/4 v0, -0x1

    :cond_9
    :goto_9
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_c
    if-le p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v1, :cond_6

    return-object p0

    :cond_6
    if-ge p1, p2, :cond_c

    const/4 v0, -0x1

    :cond_9
    :goto_9
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_c
    if-le p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 6

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v1, :cond_6

    return-object p0

    :cond_6
    if-ge p1, p2, :cond_c

    const/4 v0, -0x1

    :cond_9
    :goto_9
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_c
    if-le p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v1, :cond_6

    return-object p0

    :cond_6
    cmp-long v1, p1, p3

    if-gez v1, :cond_e

    const/4 v0, -0x1

    :cond_b
    :goto_b
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    cmp-long v1, p1, p3

    if-lez v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    iget v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_e
    if-nez p2, :cond_14

    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_86

    instance-of v2, p1, [J

    if-eqz v2, :cond_2a

    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    :goto_29
    return-object p0

    :cond_2a
    instance-of v2, p1, [I

    if-eqz v2, :cond_36

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_36
    instance-of v2, p1, [S

    if-eqz v2, :cond_42

    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_42
    instance-of v2, p1, [C

    if-eqz v2, :cond_4e

    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_4e
    instance-of v2, p1, [B

    if-eqz v2, :cond_5a

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_5a
    instance-of v2, p1, [D

    if-eqz v2, :cond_66

    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_66
    instance-of v2, p1, [F

    if-eqz v2, :cond_72

    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_72
    instance-of v2, p1, [Z

    if-eqz v2, :cond_7e

    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_7e
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_29

    :cond_86
    if-nez p3, :cond_92

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_29

    :cond_92
    move-object v1, p3

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_29
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v1, :cond_6

    return-object p0

    :cond_6
    if-ge p1, p2, :cond_c

    const/4 v0, -0x1

    :cond_9
    :goto_9
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_c
    if-le p1, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_8

    return-object p0

    :cond_8
    if-nez p1, :cond_e

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    :goto_d
    return-object p0

    :cond_e
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_d
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 9

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 9

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    if-ne p1, p2, :cond_a

    return-object p0

    :cond_a
    if-nez p1, :cond_f

    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_14
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_21

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1f

    :goto_1c
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0

    :cond_1f
    move v1, v2

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    :goto_22
    array-length v1, p1

    if-ge v0, v1, :cond_33

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_33

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_33
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .registers 3

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .registers 2

    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
