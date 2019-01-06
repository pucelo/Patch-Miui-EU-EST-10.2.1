.class Lcom/android/server/content/SyncManager$SyncHandler$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap12(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    if-eqz v2, :cond_f

    iget-boolean v4, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v2, Lcom/android/server/content/SyncOperation;->miuiInitPeriodicFixed:Z

    if-nez v4, :cond_f

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_f

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v4, :cond_f

    const-string/jumbo v4, "com.xiaomi"

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->-wrap0(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    move-result-object v1

    if-eqz v1, :cond_f

    iget v4, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_f

    :cond_50
    return-void
.end method
