.class public Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isEquals:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    return-object v2
.end method

.method static getRegistry()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-static {v3, v4}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    if-eqz v1, :cond_27

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x1

    goto :goto_24

    :cond_27
    const/4 v3, 0x0

    goto :goto_24
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v3, 0x0

    :goto_13
    array-length v4, v2

    if-ge v3, v4, :cond_6a

    iget-boolean v4, p3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v4, :cond_6a

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_58

    if-nez p4, :cond_41

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    :cond_41
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_65

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    :try_start_4d
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :try_end_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_58} :catch_5b
    .catchall {:try_start_4d .. :try_end_58} :catchall_65

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :catch_5b
    move-exception v0

    :try_start_5c
    new-instance v4, Ljava/lang/InternalError;

    const-string/jumbo v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v4

    :cond_6a
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v9, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return v9

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move-object v2, v7

    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move-object v2, v8

    :cond_20
    :goto_20
    new-instance v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    :try_start_29
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    :goto_2c
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_52

    if-eq v2, p3, :cond_52

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_3f} :catch_40

    goto :goto_2c

    :catch_40
    move-exception v6

    return v9

    :cond_42
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move-object v2, v8

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move-object v2, v7

    goto :goto_20

    :cond_51
    return v9

    :cond_52
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const-class v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_13

    sget-object v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    :cond_13
    monitor-exit v3

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_20
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-class v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v3

    :try_start_10
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v3

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 10

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 5

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 6

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    :goto_21
    return-object p0

    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_30

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_21

    :cond_30
    instance-of v1, p1, [J

    if-eqz v1, :cond_3c

    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_3c
    instance-of v1, p1, [I

    if-eqz v1, :cond_48

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_48
    instance-of v1, p1, [S

    if-eqz v1, :cond_54

    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_54
    instance-of v1, p1, [C

    if-eqz v1, :cond_60

    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_60
    instance-of v1, p1, [B

    if-eqz v1, :cond_6c

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_6c
    instance-of v1, p1, [D

    if-eqz v1, :cond_78

    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_78
    instance-of v1, p1, [F

    if-eqz v1, :cond_84

    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_84
    instance-of v1, p1, [Z

    if-eqz v1, :cond_90

    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21

    :cond_90
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_21
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    if-ne p1, p2, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 9

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 9

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_6

    return-object p0

    :cond_6
    if-ne p1, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_d

    if-nez p2, :cond_11

    :cond_d
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_11
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_19

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2b

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .registers 3

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public build()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method protected setEquals(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method
