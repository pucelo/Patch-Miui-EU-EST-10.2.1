.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v5

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get3(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get0(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v6

    if-lez v6, :cond_67

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    :goto_26
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-set2(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-set1(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->clear()V

    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-set0(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_6a

    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get4(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_49
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v6, v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->-wrap0(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;I)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_6d

    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get1(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    monitor-enter v5

    :try_start_56
    array-length v6, v2

    :goto_57
    if-ge v4, v6, :cond_72

    aget v1, v2, v4

    iget-object v7, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->-get1(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_74

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_67
    :try_start_67
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_6a

    goto :goto_26

    :catchall_6a
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_6d
    move-exception v4

    :try_start_6e
    throw v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_72
    monitor-exit v5

    return-void

    :catchall_74
    move-exception v4

    monitor-exit v5

    throw v4
.end method
