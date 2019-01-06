.class final Lcom/android/server/Watchdog$WorkerHandler;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# static fields
.field static final WAITED_HALF_DUMP:I = 0x0

.field static final WATCH_DOG_DUMP:I = 0x1

.field static final WATCH_DOG_WITH_WAITED_HALF_DUMP:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ac

    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "    // wrong message received of WorkerHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void

    :pswitch_17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v1, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v1}, Lcom/android/server/Watchdog;->-wrap1(Lcom/android/server/Watchdog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3, v10, v2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/Watchdog;->-set1(Lcom/android/server/Watchdog;Ljava/io/File;)Ljava/io/File;

    goto :goto_16

    :pswitch_32
    const/4 v11, 0x1

    :pswitch_33
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_53

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0, v11, v10}, Lcom/android/server/Watchdog;->-wrap0(Lcom/android/server/Watchdog;ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "watchdog"

    const-string/jumbo v3, "system_server"

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->-get0(Lcom/android/server/Watchdog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_71
    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->-get1(Lcom/android/server/Watchdog;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a6

    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v2, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/16 v2, 0x77

    invoke-static {v0, v2}, Lcom/android/server/Watchdog;->-wrap2(Lcom/android/server/Watchdog;C)V

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/16 v2, 0x6c

    invoke-static {v0, v2}, Lcom/android/server/Watchdog;->-wrap2(Lcom/android/server/Watchdog;C)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0, v6, v8}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;)V

    iget-object v0, p0, Lcom/android/server/Watchdog$WorkerHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/Watchdog;->-set0(Lcom/android/server/Watchdog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_a6
    .catchall {:try_start_71 .. :try_end_a6} :catchall_a9

    :cond_a6
    monitor-exit v1

    goto/16 :goto_16

    :catchall_a9
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_17
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method
