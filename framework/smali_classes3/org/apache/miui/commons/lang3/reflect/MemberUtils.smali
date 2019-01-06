.class public abstract Lorg/apache/miui/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    invoke-static {p2, p0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    invoke-static {p2, p1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    const/4 v2, -0x1

    :goto_d
    return v2

    :cond_e
    cmpg-float v2, v1, v0

    if-gez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v1

    return v1

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz p0, :cond_25

    invoke-virtual {p1, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    :cond_25
    if-nez p0, :cond_2a

    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    :cond_2a
    return v0

    :cond_2b
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eq v0, p1, :cond_31

    sget-object v3, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_31

    sget-object v3, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_2e

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v3

    sget-object v3, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2e

    sget-object v3, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v3, v4

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_31
    return v1
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_11

    aget-object v2, p0, v1

    aget-object v0, p1, v1

    invoke-static {v2, v0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v3
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .registers 2

    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static isPackageAccess(I)Z
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    return-void

    :cond_9
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :try_start_25
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method
