.class final Lcom/android/server/SystemLogSwitchesConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemLogSwitchesConfigReceiver.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;-><init>(Lcom/android/server/SystemLogSwitchesConfigReceiver;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
