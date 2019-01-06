.class public Lorg/apache/miui/commons/lang3/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/AnnotationUtils$1;
    }
.end annotation


# static fields
.field private static final TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z
    .registers 6

    const/4 v3, 0x0

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_18

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    const/4 v1, 0x1

    return v1
.end method

.method private static arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_f

    check-cast p1, [Ljava/lang/annotation/Annotation;

    check-cast p2, [Ljava/lang/annotation/Annotation;

    invoke-static {p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    :cond_f
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_20
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    check-cast p1, [S

    check-cast p2, [S

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    :cond_31
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    check-cast p1, [I

    check-cast p2, [I

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    :cond_42
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    check-cast p1, [C

    check-cast p2, [C

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    :cond_53
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    check-cast p1, [J

    check-cast p2, [J

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    :cond_64
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    check-cast p1, [F

    check-cast p2, [F

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    :cond_75
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    check-cast p1, [D

    check-cast p2, [D

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    :cond_86
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    check-cast p1, [Z

    check-cast p2, [Z

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    :cond_97
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    :cond_f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    return v0

    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0

    :cond_2d
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    check-cast p1, [C

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0

    :cond_3c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    check-cast p1, [J

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    :cond_4b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0

    :cond_5a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0

    :cond_69
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    check-cast p1, [Z

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    return v0

    :cond_78
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .registers 15

    const/4 v12, 0x1

    const/4 v8, 0x0

    if-ne p0, p1, :cond_5

    return v12

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return v8

    :cond_a
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v7, "Annotation %s with null annotationType()"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-static {v3, v7, v9}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "Annotation %s with null annotationType()"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p1, v9, v8

    invoke-static {v4, v7, v9}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    return v8

    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_33
    if-ge v7, v10, :cond_68

    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_61

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->isValidAnnotationMemberType(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_61

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v5, v6}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_5d} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_5d} :catch_64

    move-result v11

    if-nez v11, :cond_61

    return v8

    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :catch_64
    move-exception v1

    return v8

    :catch_66
    move-exception v0

    return v8

    :cond_68
    return v12
.end method

.method public static hashCode(Ljava/lang/annotation/Annotation;)I
    .registers 11

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    :goto_b
    if-ge v6, v8, :cond_40

    aget-object v2, v7, v6

    const/4 v9, 0x0

    :try_start_10
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2d

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Annotation method %s returned null"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_39

    :catch_2b
    move-exception v1

    throw v1

    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_34} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_39

    move-result v9

    add-int/2addr v3, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :catch_39
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_40
    return v3
.end method

.method private static hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v1, 0x7f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    :cond_1e
    instance-of v1, p1, Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_2a

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->hashCode(Ljava/lang/annotation/Annotation;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    return v1
.end method

.method public static isValidAnnotationMemberType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-nez v0, :cond_2f

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-class v0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method private static memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    :cond_8
    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_28

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p2, Ljava/lang/annotation/Annotation;

    invoke-static {p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    :cond_28
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    sget-object v5, Lorg/apache/miui/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v5}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    :goto_11
    if-ge v4, v6, :cond_37

    aget-object v3, v5, v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_1f

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_30

    goto :goto_1c

    :catch_2e
    move-exception v2

    throw v2

    :catch_30
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_37
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
