.class final Landroid/provider/FontsContract$1;
.super Ljava/lang/Object;
.source "FontsContract.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Landroid/provider/FontsContract;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Landroid/provider/FontsContract;->-get1()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/provider/FontsContract;->-get1()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/provider/FontsContract;->-set1(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/provider/FontsContract;->-set0(Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
