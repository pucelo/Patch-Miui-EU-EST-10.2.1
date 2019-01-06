.class public Lmiui/contentcatcher/InterceptorFactory;
.super Ljava/lang/Object;
.source "InterceptorFactory.java"


# static fields
.field private static final CONTENT_CATCHER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.contentcatcher"

.field private static final CONTENT_INJECTOR_CLASS_NAME:Ljava/lang/String; = "com.miui.contentcatcher.Interceptor"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "InterceptorFactory"

.field private static volatile mPackageInfo:Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageInfoLock"
    .end annotation
.end field

.field private static final mPackageInfoLock:Ljava/lang/Object;

.field private static volatile sInterceptorClazz:Ljava/lang/Class;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "InterceptorFactory.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    sput-boolean v0, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    sput-object v1, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    sput-object v1, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInterceptor(Landroid/app/Activity;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .registers 17

    const/4 v15, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->initInterceptorClass()Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_d

    return-object v15

    :cond_d
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const-class v13, Landroid/app/Activity;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    if-nez v9, :cond_1c

    return-object v15

    :cond_1c
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v12

    if-nez v12, :cond_26

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_26
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/miui/internal/contentcatcher/IInterceptor;

    move-object v2, v0

    sget-boolean v12, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v12, :cond_5e

    const-string/jumbo v12, "InterceptorFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "createInterceptor took "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_5e} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_5e} :catch_80
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_5e} :catch_75
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_5e} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_5f

    :cond_5e
    :goto_5e
    return-object v2

    :catch_5f
    move-exception v3

    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "Exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_6a
    move-exception v6

    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "NoSuchMethodException"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_75
    move-exception v7

    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "InvocationTargetException"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_80
    move-exception v4

    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "IllegalAccessException"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_8b
    move-exception v5

    const-string/jumbo v12, "InterceptorFactory"

    const-string/jumbo v13, "InstantiationException"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e
.end method

.method public static getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 12

    const/4 v8, 0x0

    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "InterceptorFactory"

    const-string/jumbo v7, "getInterceptorPackageInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_5e

    sget-object v7, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfoLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_15
    sget-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_6c

    if-nez v6, :cond_5d

    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_24} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_61
    .catchall {:try_start_19 .. :try_end_24} :catchall_6c

    move-result-object v3

    if-nez v3, :cond_29

    monitor-exit v7

    return-object v8

    :cond_29
    :try_start_29
    const-string/jumbo v6, "com.miui.contentcatcher"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    sput-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    sget-boolean v6, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v6, :cond_5d

    const-string/jumbo v6, "InterceptorFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPackageInfo took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_5d} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5d} :catch_61
    .catchall {:try_start_29 .. :try_end_5d} :catchall_6c

    :cond_5d
    :goto_5d
    monitor-exit v7

    :cond_5e
    sget-object v6, Lmiui/contentcatcher/InterceptorFactory;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v6

    :catch_61
    move-exception v2

    :try_start_62
    const-string/jumbo v6, "InterceptorFactory"

    const-string/jumbo v8, "Exception"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_6c

    goto :goto_5d

    :catchall_6c
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_6f
    move-exception v1

    :try_start_70
    const-string/jumbo v6, "InterceptorFactory"

    const-string/jumbo v8, "NameNotFoundException"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_6c

    goto :goto_5d
.end method

.method private static initInterceptorClass()Ljava/lang/Class;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-boolean v8, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v8, :cond_d

    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v9, "initInterceptorClass"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v8, :cond_86

    const-class v9, Lmiui/contentcatcher/InterceptorFactory;

    monitor-enter v9

    :try_start_14
    sget-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    if-nez v8, :cond_85

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Lmiui/contentcatcher/InterceptorFactory;->getInterceptorPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_85

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_94

    move-result-object v4

    :try_start_26
    sget-boolean v8, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v8, :cond_46

    const-string/jumbo v8, "InterceptorFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packageInfo.packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v4, v8, v10}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v8, "com.miui.contentcatcher.Interceptor"

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    sget-boolean v8, Lmiui/contentcatcher/InterceptorFactory;->DBG:Z

    if-eqz v8, :cond_85

    const-string/jumbo v8, "InterceptorFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initInterceptorClass took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_85} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_85} :catch_97
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_85} :catch_89
    .catchall {:try_start_26 .. :try_end_85} :catchall_94

    :cond_85
    :goto_85
    monitor-exit v9

    :cond_86
    sget-object v8, Lmiui/contentcatcher/InterceptorFactory;->sInterceptorClazz:Ljava/lang/Class;

    return-object v8

    :catch_89
    move-exception v3

    :try_start_8a
    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v10, "Error "

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_94

    goto :goto_85

    :catchall_94
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_97
    move-exception v2

    :try_start_98
    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v10, "Exception "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    :catch_a2
    move-exception v1

    const-string/jumbo v8, "InterceptorFactory"

    const-string/jumbo v10, "NameNotFoundException"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_94

    goto :goto_85
.end method
