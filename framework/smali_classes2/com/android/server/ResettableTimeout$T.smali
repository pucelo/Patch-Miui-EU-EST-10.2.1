.class Lcom/android/server/ResettableTimeout$T;
.super Ljava/lang/Thread;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ResettableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ResettableTimeout;


# direct methods
.method private constructor <init>(Lcom/android/server/ResettableTimeout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$T;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-static {v3}, Lcom/android/server/ResettableTimeout;->-get0(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    :goto_9
    monitor-enter p0

    :try_start_a
    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-static {v3}, Lcom/android/server/ResettableTimeout;->-get1(Lcom/android/server/ResettableTimeout;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/ResettableTimeout;->-set0(Lcom/android/server/ResettableTimeout;Z)Z

    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-virtual {v3}, Lcom/android/server/ResettableTimeout;->off()V

    iget-object v3, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/ResettableTimeout;->-set1(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_36

    monitor-exit p0

    return-void

    :cond_2f
    monitor-exit p0

    :try_start_30
    invoke-static {v0, v1}, Lcom/android/server/ResettableTimeout$T;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_9

    :catch_34
    move-exception v2

    goto :goto_9

    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3
.end method
