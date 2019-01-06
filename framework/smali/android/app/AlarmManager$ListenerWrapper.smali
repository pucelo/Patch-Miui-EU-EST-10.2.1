.class final Landroid/app/AlarmManager$ListenerWrapper;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenerWrapper"
.end annotation


# instance fields
.field mCompletion:Landroid/app/IAlarmCompleteListener;

.field mHandler:Landroid/os/Handler;

.field final mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field final synthetic this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 3

    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-static {v1}, Landroid/app/AlarmManager;->-get0(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p0}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_1e

    const-class v2, Landroid/app/AlarmManager;

    monitor-enter v2

    :try_start_d
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_24

    :cond_1c
    monitor-exit v2

    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 5

    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    const-class v1, Landroid/app/AlarmManager;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/app/AlarmManager;->-get1()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1b

    :cond_14
    monitor-exit v1

    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {v1}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_16

    :try_start_5
    iget-object v1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "Unable to report completion to Alarm Manager!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catchall_16
    move-exception v1

    :try_start_17
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v2, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    throw v1

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "Unable to report completion to Alarm Manager!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method
