.class final Lcom/android/server/am/ProcessManagerService$LocalService;
.super Lmiui/process/ProcessManagerInternal;
.source "ProcessManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ProcessManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-direct {p0}, Lmiui/process/ProcessManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessManagerService$LocalService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService$LocalService;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    return-void
.end method


# virtual methods
.method public forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get6(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/MiuiApplicationThreadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiApplicationThreadManager;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowForegroundAppInfoLocked()Landroid/content/pm/ApplicationInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->getMultiWindowForegroundAppInfoLocked(Lcom/android/server/am/ActivityManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessManagerService;->notifyActivityChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method public notifyForegroundInfoChanged(Ljava/lang/Object;Ljava/lang/Object;ILandroid/content/pm/ApplicationInfo;)V
    .registers 8

    if-eqz p1, :cond_17

    instance-of v2, p1, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_17

    if-eqz p2, :cond_17

    instance-of v2, p2, Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz v2, :cond_17

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    move-object v0, p2

    check-cast v0, Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v2, v1, v0, p3, p4}, Lcom/android/server/am/ProcessManagerService;->notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    :cond_17
    return-void
.end method

.method public recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ProcessManagerService;->recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateProcessForegroundLocked(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get8(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
