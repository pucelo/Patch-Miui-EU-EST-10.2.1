.class public Landroid/content/SyncAdaptersCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "SyncAdaptersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncAdaptersCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_NAME:Ljava/lang/String; = "sync-adapter"

.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final SERVICE_META_DATA:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;


# instance fields
.field private mAuthorityToSyncAdapters:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/SyncAdaptersCache$MySerializer;

    invoke-direct {v0}, Landroid/content/SyncAdaptersCache$MySerializer;-><init>()V

    sput-object v0, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-string/jumbo v2, "android.content.SyncAdapter"

    const-string/jumbo v3, "android.content.SyncAdapter"

    const-string/jumbo v4, "sync-adapter"

    sget-object v5, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 11

    iget-object v7, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_17

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v6, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_58

    monitor-exit v7

    return-object v6

    :cond_25
    :try_start_25
    invoke-virtual {p0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncAdapterType;

    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_32

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_25 .. :try_end_57} :catchall_58

    goto :goto_32

    :catchall_58
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_58

    monitor-exit v7

    return-object v5
.end method

.method protected onServicesChangedLocked(I)V
    .registers 5

    iget-object v2, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    :cond_10
    monitor-exit v2

    invoke-super {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected onUserRemoved(I)V
    .registers 4

    iget-object v1, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-super {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onUserRemoved(I)V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;
    .registers 14

    sget-object v0, Lcom/android/internal/R$styleable;->SyncAdapter:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v0, 0x2

    :try_start_7
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_48

    move-result v0

    if-eqz v0, :cond_21

    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_21
    const/4 v0, 0x3

    const/4 v8, 0x1

    :try_start_23
    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v0, 0x4

    const/4 v8, 0x1

    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v0, 0x6

    const/4 v8, 0x0

    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v0, 0x5

    const/4 v8, 0x0

    invoke-virtual {v9, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Landroid/content/SyncAdapterType;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_48

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_48
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/SyncAdaptersCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method
