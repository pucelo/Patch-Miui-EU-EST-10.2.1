.class Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;
.super Landroid/os/Handler;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecurityWriteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const/16 v10, 0xa

    const/4 v5, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_ba

    :goto_8
    return-void

    :pswitch_9
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get1(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;

    move-result-object v5

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_14
    invoke-virtual {p0, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-wrap11(Lcom/miui/server/SecurityManagerService;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_21

    monitor-exit v5

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_8

    :catchall_21
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_24
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get3(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    const/4 v4, 0x2

    :try_start_2f
    invoke-virtual {p0, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-wrap12(Lcom/miui/server/SecurityManagerService;)V
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3c

    monitor-exit v5

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_8

    :catchall_3c
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_3f
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get3(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    const/4 v4, 0x3

    :try_start_4a
    invoke-virtual {p0, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    const-string/jumbo v4, "vendor"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_93

    const-string/jumbo v4, "vendor"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get0(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v6}, Lcom/miui/server/SecurityManagerService;->-get2(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v6

    invoke-static {v4, v3, v6, v7}, Lmiui/security/SecurityManagerCompat;->writeBootTime(Landroid/content/Context;Ljava/lang/String;J)V

    const-string/jumbo v4, "SecurityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Wake up time updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v7}, Lcom/miui/server/SecurityManagerService;->-get2(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_4a .. :try_end_8d} :catchall_9d

    :goto_8d
    monitor-exit v5

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_8

    :cond_93
    :try_start_93
    const-string/jumbo v4, "SecurityManagerService"

    const-string/jumbo v6, "There is no corresponding feature!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9d

    goto :goto_8d

    :catchall_9d
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_a0
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v5

    :try_start_a3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4, v1}, Lcom/miui/server/SecurityManagerService;->-wrap3(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    iget-object v4, v2, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_b4
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_b7

    monitor-exit v5

    goto/16 :goto_8

    :catchall_b7
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_9
        :pswitch_24
        :pswitch_3f
        :pswitch_a0
    .end packed-switch
.end method
