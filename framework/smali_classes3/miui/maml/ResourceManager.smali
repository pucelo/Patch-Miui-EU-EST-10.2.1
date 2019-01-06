.class public Lmiui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ResourceManager$AsyncLoadListener;,
        Lmiui/maml/ResourceManager$BitmapInfo;,
        Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;
    }
.end annotation


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"

.field private static final RESOURCE_FALLBACK_DENSITY:I = 0x1e0

.field private static final RESOURCE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String; = "den480/"


# instance fields
.field protected final mBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceLoader:Lmiui/maml/ResourceLoader;

.field private mTargetDensity:I

.field protected final mWeakRefBitmapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/ResourceManager;Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/ResourceLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    iput-object p1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    new-instance v0, Lmiui/maml/ResourceManager$1;

    const/high16 v1, 0x10000000

    invoke-direct {v0, p0, v1}, Lmiui/maml/ResourceManager$1;-><init>(Lmiui/maml/ResourceManager;I)V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    return-void
.end method

.method private getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ResourceManager$BitmapInfo;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_39

    monitor-exit v3

    const/4 v0, 0x0

    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_11
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_3c

    monitor-exit v3

    if-eqz v1, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    :cond_2a
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_2d
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_3f

    :goto_37
    monitor-exit v3

    :cond_38
    :goto_38
    return-object v1

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_42
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ResourceManager$BitmapInfo;

    if-eqz v1, :cond_5f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    iget-object v3, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_55
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5c

    monitor-exit v3

    goto :goto_38

    :catchall_5c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_5f
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_62
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_68

    goto :goto_37

    :catchall_68
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v5, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    if-eqz v5, :cond_4f

    const-string/jumbo v5, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "try to load resource from extra resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d1

    move-object v3, p1

    :goto_46
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v5, v3, v2}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v4, 0x0

    :cond_4f
    if-nez v1, :cond_5b

    iget v5, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v5, p1, v2}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    :cond_5b
    if-nez v1, :cond_7b

    const/16 v5, 0x1e0

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "den480/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v5, v0, v2}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    :cond_7b
    if-eqz v1, :cond_f3

    if-nez v4, :cond_a6

    const-string/jumbo v5, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load image from extra resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    iput-object p1, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    iput-object v5, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    iget-object v5, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v6

    :try_start_bc
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_ed

    monitor-exit v6

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_c5
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_f0

    monitor-exit v6

    :goto_d0
    return-object v1

    :cond_d1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_46

    :catchall_ed
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_f0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_f3
    const-string/jumbo v5, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to load image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0
.end method

.method public static retranslateDensity(I)I
    .registers 8

    const/16 v6, 0x21c

    const/16 v3, 0x168

    const-wide v4, 0x3fec71c71c71c71cL    # 0.8888888888888888

    const/16 v2, 0xf0

    if-le p0, v2, :cond_21

    if-gt p0, v3, :cond_21

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    add-int/lit16 v2, p0, -0xf0

    int-to-double v2, v2

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0xf0

    return v2

    :cond_21
    if-le p0, v3, :cond_32

    if-gt p0, v6, :cond_32

    const-wide v0, 0x3fec71c71c71c71cL    # 0.8888888888888888

    add-int/lit16 v2, p0, -0x168

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0x140

    return v2

    :cond_32
    if-le p0, v6, :cond_45

    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_45

    const-wide v0, 0x3fec71c71c71c71cL    # 0.8888888888888888

    add-int/lit16 v2, p0, -0x21c

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0x1e0

    return v2

    :cond_45
    return p0
.end method

.method public static translateDensity(I)I
    .registers 8

    const/16 v6, 0x1e0

    const/16 v3, 0x140

    const-wide/high16 v4, 0x3ff2000000000000L    # 1.125

    const/16 v2, 0xf0

    if-le p0, v2, :cond_18

    if-gt p0, v3, :cond_18

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    add-int/lit16 v2, p0, -0xf0

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0xf0

    return v2

    :cond_18
    if-le p0, v3, :cond_26

    if-gt p0, v6, :cond_26

    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    add-int/lit16 v2, p0, -0x140

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0x168

    return v2

    :cond_26
    if-le p0, v6, :cond_36

    const/16 v2, 0x280

    if-gt p0, v2, :cond_36

    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    add-int/lit16 v2, p0, -0x1e0

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit16 v2, v2, 0x21c

    return v2

    :cond_36
    return p0
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clear(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finish(Z)V
    .registers 4

    if-nez p1, :cond_14

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_23

    monitor-exit v1

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_26

    monitor-exit v1

    :cond_14
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_17
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_29

    monitor-exit v1

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->finish()V

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :cond_9
    return-object v1
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v2

    :cond_8
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    const-string/jumbo v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    return-object v1
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lmiui/maml/ResourceManager$AsyncLoadListener;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v2

    :cond_9
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_13
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_59

    move-result-object v0

    if-eqz v0, :cond_23

    monitor-exit v2

    return-object v0

    :cond_23
    :try_start_23
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "ResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load image async: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lmiui/maml/ResourceManager;Lmiui/maml/ResourceManager$AsyncLoadListener;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_59

    :cond_50
    monitor-exit v2

    new-instance v0, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-direct {v0}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>()V

    iput-boolean v5, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    return-object v0

    :catchall_59
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    :cond_b
    return-object v3

    :cond_c
    iget-object v2, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_25

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    iget-object v4, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-object v0

    :cond_25
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-object v6
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    :cond_9
    return-object v1
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->init()V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setCacheSize(I)V
    .registers 4

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDefaultResourceDensity(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    iput p2, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setExtraResourceDensity(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1}, Lmiui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1, p1}, Lmiui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    :cond_18
    return-void
.end method

.method public setTargetDensity(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    return-void
.end method
