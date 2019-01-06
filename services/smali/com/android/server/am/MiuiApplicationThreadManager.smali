.class Lcom/android/server/am/MiuiApplicationThreadManager;
.super Ljava/lang/Object;
.source "MiuiApplicationThreadManager.java"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mMiuiApplicationThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/process/IMiuiApplicationThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public declared-synchronized addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/IMiuiApplicationThread;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMiuiApplicationThread(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager;->mMiuiApplicationThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
