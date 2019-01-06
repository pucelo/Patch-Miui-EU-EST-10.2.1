.class public abstract Lcom/android/systemui/util/FixedFileObserver;
.super Ljava/lang/Object;
.source "FixedFileObserver.java"


# static fields
.field private static final sObserverLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/util/FixedFileObserver;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mMask:I

.field private mObserver:Landroid/os/FileObserver;

.field private final mRootPath:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/util/FixedFileObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/FixedFileObserver;->mMask:I

    return v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/util/FixedFileObserver;->mRootPath:Ljava/io/File;

    iput p2, p0, Lcom/android/systemui/util/FixedFileObserver;->mMask:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/FixedFileObserver;->stopWatching()V

    return-void
.end method

.method public abstract onEvent(ILjava/lang/String;)V
.end method

.method public startWatching()V
    .locals 5

    sget-object v2, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/util/FixedFileObserver;->mRootPath:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/util/FixedFileObserver;->mRootPath:Ljava/io/File;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/util/FixedFileObserver;->mRootPath:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/FixedFileObserver;

    iget-object v1, v1, Lcom/android/systemui/util/FixedFileObserver;->mObserver:Landroid/os/FileObserver;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/util/FixedFileObserver;->mObserver:Landroid/os/FileObserver;

    iget-object v1, p0, Lcom/android/systemui/util/FixedFileObserver;->mObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/systemui/util/FixedFileObserver$1;

    iget-object v3, p0, Lcom/android/systemui/util/FixedFileObserver;->mRootPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/android/systemui/util/FixedFileObserver$1;-><init>(Lcom/android/systemui/util/FixedFileObserver;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopWatching()V
    .locals 4

    sget-object v2, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/systemui/util/FixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/util/FixedFileObserver;->mRootPath:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/FixedFileObserver;->mObserver:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/FixedFileObserver;->mObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/util/FixedFileObserver;->mObserver:Landroid/os/FileObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
