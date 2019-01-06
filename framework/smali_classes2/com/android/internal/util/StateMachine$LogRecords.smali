.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/util/StateMachine$LogRecords;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    return v0
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    iput-boolean v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$LogRecords;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 15

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-ge v1, v2, :cond_23

    iget-object v7, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v0, Lcom/android/internal/util/StateMachine$LogRec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_46

    :goto_21
    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v1, v2, :cond_3c

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    :cond_3c
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_46

    goto :goto_21

    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized cleanup()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int v0, v1, p1

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v1, :cond_c

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    sub-int/2addr v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1f

    move-result v1

    if-lt v0, v1, :cond_15

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v1

    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLogOnlyTransitions(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
