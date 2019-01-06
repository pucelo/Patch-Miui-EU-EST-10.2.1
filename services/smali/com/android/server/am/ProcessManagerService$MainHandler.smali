.class Lcom/android/server/am/ProcessManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ProcessManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$MainHandler;->this$0:Lcom/android/server/am/ProcessManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$MainHandler;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$MainHandler;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get9(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessStarter;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStarter;->restoreLastProcessesInfoLocked(I)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5

    :catchall_20
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
