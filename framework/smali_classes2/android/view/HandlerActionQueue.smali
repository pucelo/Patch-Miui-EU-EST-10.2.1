.class public Landroid/view/HandlerActionQueue;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandlerActionQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeActions(Landroid/os/Handler;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    const/4 v3, 0x0

    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    :goto_6
    if-ge v3, v1, :cond_14

    aget-object v2, v0, v3

    iget-object v4, v2, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v2, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    const/4 v4, 0x0

    iput v4, p0, Landroid/view/HandlerActionQueue;->mCount:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDelay(I)J
    .registers 4

    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-lt p1, v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object v0, v0, p1

    iget-wide v0, v0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    return-wide v0
.end method

.method public getRunnable(I)Ljava/lang/Runnable;
    .registers 3

    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-lt p1, v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HandlerActionQueue;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 8

    new-instance v0, Landroid/view/HandlerActionQueue$HandlerAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/HandlerActionQueue$HandlerAction;-><init>(Ljava/lang/Runnable;J)V

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    if-nez v1, :cond_f

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    :cond_f
    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/HandlerActionQueue;->mCount:I
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1d

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/HandlerActionQueue$HandlerAction;->matches(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    if-eq v3, v2, :cond_1a

    aget-object v4, v0, v2

    aput-object v4, v0, v3

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1d
    iput v3, p0, Landroid/view/HandlerActionQueue;->mCount:I

    :goto_1f
    if-ge v3, v1, :cond_27

    const/4 v4, 0x0

    aput-object v4, v0, v3
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    return v0
.end method
