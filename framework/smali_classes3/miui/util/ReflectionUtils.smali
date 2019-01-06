.class public Lmiui/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"

.field private static final constructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final fieldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lmiui/util/ReflectionUtils;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lmiui/util/ReflectionUtils;->checkMethodReturnValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-static {p0, p1, p3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lmiui/util/ReflectionUtils;->checkMethodReturnValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_c} :catch_e

    move-result-object v3

    return-object v3

    :catch_e
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static checkFieldValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fieldClazz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p0, :cond_11

    return-object v1

    :cond_11
    if-nez p1, :cond_14

    return-object p0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fieldClazz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMethodReturnValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    if-nez p1, :cond_7

    return-object p0

    :cond_7
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "returnValueClazz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lmiui/util/ReflectionUtils;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/miui/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "#bestmatch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_1f
    sget-object v7, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    sget-object v7, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_3a

    new-instance v7, Ljava/lang/NoSuchMethodException;

    invoke-direct {v7, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v7

    monitor-exit v9

    throw v7

    :cond_3a
    monitor-exit v9

    return-object v1

    :cond_3c
    monitor-exit v9

    :try_start_3d
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v9, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3d .. :try_end_44} :catch_4e

    :try_start_44
    sget-object v7, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4b

    :try_start_49
    monitor-exit v9

    return-object v1

    :catchall_4b
    move-exception v7

    monitor-exit v9

    throw v7
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_49 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v9, v2

    move v7, v8

    :goto_56
    if-ge v7, v9, :cond_78

    aget-object v1, v2, v7

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {p1, v8, v11}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v8

    if-eqz v8, :cond_75

    if-eqz v0, :cond_74

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v8, v10, p1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v8

    if-gez v8, :cond_75

    :cond_74
    move-object v0, v1

    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_78
    if-eqz v0, :cond_8a

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v8, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_80
    sget-object v7, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_87

    monitor-exit v8

    return-object v0

    :catchall_87
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_8a
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    sget-object v8, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_92
    sget-object v7, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_9a

    monitor-exit v8

    throw v3

    :catchall_9a
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-static {p1}, Lmiui/util/ReflectionUtils;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#exact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1d
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_38

    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_38
    monitor-exit v5

    return-object v0

    :cond_3a
    monitor-exit v5

    :try_start_3b
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v5, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_46} :catch_50

    :try_start_46
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4d

    :try_start_4b
    monitor-exit v5

    return-object v0

    :catchall_4d
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4b .. :try_end_50} :catch_50

    :catch_50
    move-exception v1

    sget-object v5, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_54
    sget-object v4, Lmiui/util/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5c

    monitor-exit v5

    throw v1

    :catchall_5c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_18
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    if-nez v1, :cond_33

    new-instance v4, Ljava/lang/NoSuchFieldException;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_33
    monitor-exit v5

    return-object v1

    :cond_35
    monitor-exit v5

    :try_start_36
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v5, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_41
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36 .. :try_end_41} :catch_4b

    :try_start_41
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_48

    :try_start_46
    monitor-exit v5

    return-object v1

    :catchall_48
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_46 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception v0

    sget-object v5, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_4f
    sget-object v4, Lmiui/util/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_57

    monitor-exit v5

    throw v0

    :catchall_57
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    :catch_5
    move-exception v0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_14

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    throw v0

    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v2

    return-object v2

    :catch_1a
    move-exception v1

    goto :goto_6
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "#bestmatch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_27
    sget-object v7, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    sget-object v7, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-nez v4, :cond_42

    new-instance v7, Ljava/lang/NoSuchMethodException;

    invoke-direct {v7, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v7

    monitor-exit v9

    throw v7

    :cond_42
    monitor-exit v9

    return-object v4

    :cond_44
    monitor-exit v9

    :try_start_45
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v9, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_4c} :catch_56

    :try_start_4c
    sget-object v7, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_53

    :try_start_51
    monitor-exit v9

    return-object v4

    :catchall_53
    move-exception v7

    monitor-exit v9

    throw v7
    :try_end_56
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_56} :catch_56

    :catch_56
    move-exception v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v9, v5

    move v7, v8

    :goto_5e
    if-ge v7, v9, :cond_8a

    aget-object v4, v5, v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {p2, v8, v11}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v8

    if-eqz v8, :cond_87

    if-eqz v0, :cond_86

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {v8, v10, p2}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v8

    if-gez v8, :cond_87

    :cond_86
    move-object v0, v4

    :cond_87
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_8a
    if-eqz v0, :cond_9c

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v8, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_92
    sget-object v7, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_99

    monitor-exit v8

    return-object v0

    :catchall_99
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_9c
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    sget-object v8, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_a4
    sget-object v7, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_ac

    monitor-exit v8

    throw v1

    :catchall_ac
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-static {p2}, Lmiui/util/ReflectionUtils;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lmiui/util/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#exact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_25
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-nez v2, :cond_40

    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-direct {v4, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_40
    monitor-exit v5

    return-object v2

    :cond_42
    monitor-exit v5

    :try_start_43
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v5, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_43 .. :try_end_4e} :catch_58

    :try_start_4e
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_55

    :try_start_53
    monitor-exit v5

    return-object v2

    :catchall_55
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_53 .. :try_end_58} :catch_58

    :catch_58
    move-exception v0

    sget-object v5, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_5c
    sget-object v4, Lmiui/util/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_64

    monitor-exit v5

    throw v0

    :catchall_64
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    array-length v3, p2

    add-int/lit8 v0, v3, -0x1

    :goto_6
    if-ltz v0, :cond_40

    aget-object v2, p2, v0

    if-nez v2, :cond_15

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "parameter type must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    if-nez v1, :cond_1b

    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    :cond_1b
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_26

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v1, v0

    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_37

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_23

    :cond_37
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "parameter type must either be specified as Class or String"

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_40
    if-nez v1, :cond_44

    new-array v1, v4, [Ljava/lang/Class;

    :cond_44
    invoke-static {p0, p1, v1}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    return-object v3
.end method

.method public static varargs getClassesAsArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    return-object p0
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lmiui/util/ReflectionUtils;->checkFieldValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_19

    aget-object v2, p0, v1

    if-eqz v2, :cond_17

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_12
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    move-object v2, v3

    goto :goto_12

    :cond_19
    return-object v0
.end method

.method private static varargs getParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    array-length v4, p0

    :goto_b
    if-ge v3, v4, :cond_2c

    aget-object v0, p0, v3

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    :goto_12
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_25
    const-string/jumbo v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_2c
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lmiui/util/ReflectionUtils;->checkFieldValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_c} :catch_e

    move-result-object v3

    return-object v3

    :catch_e
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getSurroundingThis(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0, p1}, Lmiui/util/ReflectionUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v2, "ReflectionUtils"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_1
    new-instance v4, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_a} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v4

    :catch_b
    move-exception v3

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :catch_16
    move-exception v1

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :catch_21
    move-exception v0

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :catch_2c
    move-exception v2

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method public static varargs tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_1
    new-instance v4, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_a} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v4

    :catch_b
    move-exception v3

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :catch_16
    move-exception v1

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :catch_21
    move-exception v0

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :catch_2c
    move-exception v2

    const-string/jumbo v4, "ReflectionUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method public static tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "ReflectionUtils"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs tryFindMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    return-object v2

    :catch_6
    move-exception v1

    const-string/jumbo v2, "ReflectionUtils"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_11
    move-exception v0

    const-string/jumbo v2, "ReflectionUtils"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public static tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    new-instance v3, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_a} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v3

    :catch_b
    move-exception v1

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_16
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_21
    move-exception v2

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public static tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    new-instance v3, Lmiui/util/ObjectReference;

    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_a} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v3

    :catch_b
    move-exception v1

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_16
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_21
    move-exception v2

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public static tryGetSurroundingThis(Ljava/lang/Object;Ljava/lang/Class;)Lmiui/util/ObjectReference;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lmiui/util/ObjectReference",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    new-instance v3, Lmiui/util/ObjectReference;

    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->getSurroundingThis(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/util/ObjectReference;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_a} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v3

    :catch_b
    move-exception v1

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_16
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_21
    move-exception v2

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public static varargs tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_4} :catch_32
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_4} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_4} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v5

    return-object v5

    :catch_6
    move-exception v4

    const-string/jumbo v5, "ReflectionUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7

    :catch_11
    move-exception v1

    const-string/jumbo v5, "ReflectionUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7

    :catch_1c
    move-exception v0

    const-string/jumbo v5, "ReflectionUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7

    :catch_27
    move-exception v2

    const-string/jumbo v5, "ReflectionUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7

    :catch_32
    move-exception v3

    const-string/jumbo v5, "ReflectionUtils"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

.method public static trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v1

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_f
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1a
    move-exception v2

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmiui/util/ReflectionUtils;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_3} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v1

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_f
    move-exception v0

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1a
    move-exception v2

    const-string/jumbo v3, "ReflectionUtils"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
