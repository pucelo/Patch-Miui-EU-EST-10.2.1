.class final Lcom/android/server/am/PendingIntentRecordInjector$1;
.super Landroid/os/Handler;
.source "PendingIntentRecordInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecordInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    :goto_5
    return-void

    :pswitch_6
    invoke-static {}, Lcom/android/server/am/PendingIntentRecordInjector;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/am/PendingIntentRecordInjector;->-get1()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    monitor-exit v1

    goto :goto_5

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
