.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mClass:Ljava/lang/String;

.field mHits:I

.field private final mIgnoreMatchingSpecificIntents:Z

.field mLastActivity:Landroid/app/Activity;

.field private final mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    iput-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    iput-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    iput-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    iput-boolean v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final getHits()I
    .registers 2

    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method final ignoreMatchingSpecificIntents()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return v0
.end method

.method public final isBlocking()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    if-eqz v1, :cond_7

    return v5

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "Instrumentation"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, p3, v4, v3}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_53

    move-result v1

    if-gez v1, :cond_1e

    monitor-exit p0

    return v5

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_4a

    const/4 v0, 0x0

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    :goto_2d
    if-eqz v0, :cond_39

    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_53

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    :cond_39
    monitor-exit p0

    return v5

    :cond_3b
    :try_start_3b
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_4a
    if-eqz p2, :cond_51

    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Instrumentation$ActivityMonitor;->notifyAll()V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_53

    :cond_51
    monitor-exit p0

    return v6

    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final waitForActivity()Landroid/app/Activity;
    .registers 4

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v2, :cond_b

    :try_start_5
    invoke-virtual {p0}, Landroid/app/Instrumentation$ActivityMonitor;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v1

    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final waitForActivityWithTimeout(J)Landroid/app/Activity;
    .registers 8

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_18

    if-nez v2, :cond_9

    :try_start_6
    invoke-virtual {p0, p1, p2}, Landroid/app/Instrumentation$ActivityMonitor;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_f
    .catchall {:try_start_6 .. :try_end_9} :catchall_18

    :cond_9
    :goto_9
    :try_start_9
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_18

    if-nez v2, :cond_11

    monitor-exit p0

    return-object v3

    :catch_f
    move-exception v0

    goto :goto_9

    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v1

    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2
.end method
