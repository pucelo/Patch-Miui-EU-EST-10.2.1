.class final Lcom/android/server/wm/MIUIWatermark$1;
.super Ljava/lang/Thread;
.source "MIUIWatermark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MIUIWatermark;->getImeiInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MIUIWatermark$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/MIUIWatermark;->-get0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_20

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/MIUIWatermark;->-get0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lcom/android/server/wm/MIUIWatermark$1;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/MIUIWatermark;->-wrap0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/MIUIWatermark;->-wrap1(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    :cond_1b
    :try_start_1b
    monitor-exit p0

    :cond_1c
    :goto_1c
    return-void

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_20

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1c
.end method
