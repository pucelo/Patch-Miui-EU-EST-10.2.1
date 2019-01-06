.class final Lcom/android/internal/os/BinderInternal$GcWatcher;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GcWatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BinderInternal;->handleGc()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    sget-object v2, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_c
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    sput-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_2f

    monitor-exit v2

    const/4 v0, 0x0

    :goto_1a
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_32
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/android/internal/os/BinderInternal$GcWatcher;

    invoke-direct {v2}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    return-void
.end method
