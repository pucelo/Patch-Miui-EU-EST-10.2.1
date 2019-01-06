.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_50

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    :try_start_10
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1d

    monitor-exit v4

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    goto :goto_c

    :catchall_1d
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_20
    if-eqz v1, :cond_c

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_27

    const/4 v3, 0x1

    :cond_27
    invoke-interface {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_c

    :pswitch_2b
    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    :try_start_30
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v3, :cond_48

    const-string/jumbo v0, "android.os.action.CHARGING"
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_4c

    :goto_39
    monitor-exit v4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    :cond_48
    :try_start_48
    const-string/jumbo v0, "android.os.action.DISCHARGING"
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_39

    :catchall_4c
    move-exception v3

    monitor-exit v4

    throw v3

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_d
        :pswitch_20
        :pswitch_2b
    .end packed-switch
.end method
