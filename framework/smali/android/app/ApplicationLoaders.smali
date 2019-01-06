.class public Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method private getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 22

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v9

    iget-object v12, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v12

    if-nez p6, :cond_f

    move-object/from16 p6, v9

    :cond_f
    move-object/from16 v0, p6

    if-ne v0, v9, :cond_56

    :try_start_13
    iget-object v2, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ClassLoader;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_6b

    if-eqz v11, :cond_21

    monitor-exit v12

    return-object v11

    :cond_21
    const-wide/16 v2, 0x40

    :try_start_23
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v2, "setupVulkanLayerPath"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p4

    invoke-static {v10, v0}, Landroid/app/ApplicationLoaders;->setupVulkanLayerPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v2, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_23 .. :try_end_54} :catchall_6b

    monitor-exit v12

    return-object v10

    :cond_56
    const-wide/16 v2, 0x40

    :try_start_58
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v11

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_6b

    monitor-exit v12

    return-object v11

    :catchall_6b
    move-exception v2

    monitor-exit v12

    throw v2
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .registers 1

    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method

.method private static native setupVulkanLayerPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.end method


# virtual methods
.method addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 6

    instance-of v1, p1, Ldalvik/system/PathClassLoader;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "class loader is not a PathClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v0, p1

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p2}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    return-void
.end method

.method public createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 13

    const/4 v5, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
