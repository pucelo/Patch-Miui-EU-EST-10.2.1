.class final Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
.super Landroid/os/Handler;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final ACTIVITY_DESTROYED:I = 0x5

.field static final ACTIVITY_IDLE:I = 0x1

.field static final ACTIVITY_PAUSED:I = 0x3

.field static final ACTIVITY_RESUMED:I = 0x2

.field static final ACTIVITY_STOPPED:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 15

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eqz p1, :cond_ba

    if-eqz p2, :cond_ba

    const-string/jumbo v7, "packages"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v7, "activities"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/lit8 v4, v7, 0x1

    :goto_1c
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/lit8 v3, v7, 0x1

    :goto_24
    if-nez v4, :cond_2f

    xor-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_2f

    return v10

    :cond_2b
    const/4 v4, 0x0

    goto :goto_1c

    :cond_2d
    const/4 v3, 0x0

    goto :goto_24

    :cond_2f
    if-eqz v4, :cond_7a

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    return v10

    :cond_3a
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    if-eqz v3, :cond_b0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_a6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    return v10

    :cond_7a
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "Don\'t need to check package"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_84
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a5
    return v11

    :cond_a6
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "The realActivity is null"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_b0
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "Don\'t need to check activity"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_ba
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "Record or intent is null"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    return v11
.end method

.method private dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get2(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    packed-switch p1, :pswitch_data_24

    :goto_e
    return-void

    :pswitch_f
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityIdle(Landroid/content/Intent;)V

    goto :goto_e

    :pswitch_13
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityResumed(Landroid/content/Intent;)V

    goto :goto_e

    :pswitch_17
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityPaused(Landroid/content/Intent;)V

    goto :goto_e

    :pswitch_1b
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityStopped(Landroid/content/Intent;)V

    goto :goto_e

    :pswitch_1f
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityDestroyed(Landroid/content/Intent;)V

    goto :goto_e

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_9

    packed-switch p1, :pswitch_data_22

    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "ACTIVITY_IDLE"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "ACTIVITY_RESUMED"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "ACTIVITY_PAUSED"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "ACTIVITY_STOPPED"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "ACTIVITY_DESTROYED"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_ae

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_5

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    monitor-enter v8

    :try_start_13
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :cond_1d
    :goto_1d
    if-lez v3, :cond_a1

    add-int/lit8 v3, v3, -0x1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IMiuiActivityObserver;
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_6f

    if-eqz v4, :cond_1d

    :try_start_2f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9c

    instance-of v7, v0, Landroid/content/Intent;

    if-eqz v7, :cond_9c

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v5, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_7c
    .catchall {:try_start_2f .. :try_end_4e} :catchall_6f

    goto :goto_1d

    :catch_4f
    move-exception v1

    :try_start_50
    const-string/jumbo v7, "MiuiActivityController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_6f

    goto :goto_1d

    :catchall_6f
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_72
    :try_start_72
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v9, " No need to dispatch the event, ignore it!"

    invoke-static {v7, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7b} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7b} :catch_7c
    .catchall {:try_start_72 .. :try_end_7b} :catchall_6f

    goto :goto_1d

    :catch_7c
    move-exception v2

    :try_start_7d
    const-string/jumbo v7, "MiuiActivityController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_7d .. :try_end_9b} :catchall_6f

    goto :goto_1d

    :cond_9c
    :try_start_9c
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_7c
    .catchall {:try_start_9c .. :try_end_9f} :catchall_6f

    goto/16 :goto_1d

    :cond_a1
    :try_start_a1
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_6f

    monitor-exit v8

    goto/16 :goto_5

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
