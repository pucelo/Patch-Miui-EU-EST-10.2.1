.class Lcom/android/server/policy/MiuiScreenOnProximityLock$2;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    monitor-enter v1

    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    packed-switch v0, :pswitch_data_2e

    :goto_8
    monitor-exit v1

    return-void

    :pswitch_a
    :try_start_a
    const-string/jumbo v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release()Z
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-wrap0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_8

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-wrap1(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_8

    :pswitch_28
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-wrap2(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_19

    goto :goto_8

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1c
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method
