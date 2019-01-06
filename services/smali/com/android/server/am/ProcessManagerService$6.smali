.class Lcom/android/server/am/ProcessManagerService$6;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->doAdjBoost(Ljava/lang/String;IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput p2, p0, Lcom/android/server/am/ProcessManagerService$6;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/ProcessManagerService$6;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->-get2(Lcom/android/server/am/ProcessManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ProcessManagerService$6;->val$userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->val$processName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    if-eqz v1, :cond_61

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->-get8(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ProcessManagerService$6;->val$userId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    sget v4, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v4, 0xa

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    :goto_4f
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_6f

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->val$processName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    return-void

    :cond_62
    :try_start_62
    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iget-object v2, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->maxProcState:I
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_6f

    goto :goto_4f

    :catchall_6f
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
