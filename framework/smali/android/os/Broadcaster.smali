.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-nez v9, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget v4, p1, Landroid/os/Message;->what:I

    iget-object v5, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    move-object v3, v5

    :goto_c
    iget v9, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v9, v4, :cond_2f

    :cond_10
    iget v9, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v9, v4, :cond_34

    iget-object v7, v3, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v8, v3, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    array-length v2, v7

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_34

    aget-object v6, v7, v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    aget v9, v8, v0

    iput v9, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2f
    iget-object v3, v3, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_36

    if-eq v3, v5, :cond_10

    goto :goto_c

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_59

    move-object v2, v4

    if-nez v4, :cond_c

    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-eq v2, v4, :cond_10

    :cond_c
    iget v7, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v7, p1, :cond_8

    :cond_10
    iget v7, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v7, p1, :cond_54

    iget-object v5, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    array-length v1, v5

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_54

    aget-object v7, v5, v0

    if-ne v7, p2, :cond_56

    aget v7, v6, v0

    if-ne v7, p3, :cond_56

    add-int/lit8 v7, v1, -0x1

    new-array v7, v7, [Landroid/os/Handler;

    iput-object v7, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    add-int/lit8 v7, v1, -0x1

    new-array v7, v7, [I

    iput-object v7, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    if-lez v0, :cond_40

    iget-object v7, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_40
    sub-int v7, v1, v0

    add-int/lit8 v3, v7, -0x1

    if-eqz v3, :cond_54

    add-int/lit8 v7, v0, 0x1

    iget-object v8, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v5, v7, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v0, 0x1

    iget-object v8, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v6, v7, v8, v0, v3}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_59

    :cond_54
    monitor-exit p0

    return-void

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catchall_59
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public dumpRegistrations()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcaster "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_7a

    move-object v2, v3

    :cond_26
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    senderWhat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v1, v4

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v1, :cond_76

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_76
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v2, v3, :cond_26

    :cond_7a
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_84

    monitor-exit p0

    return-void

    :catchall_84
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public request(ILandroid/os/Handler;I)V
    .registers 15

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2
    iget-object v8, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v8, :cond_2b

    new-instance v5, Landroid/os/Broadcaster$Registration;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$Registration;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_6b

    :try_start_c
    iput p1, v5, Landroid/os/Broadcaster$Registration;->senderWhat:I

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/os/Handler;

    iput-object v8, v5, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v5, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iget-object v8, v5, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    iget-object v8, v5, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v9, 0x0

    aput p3, v8, v9

    iput-object v5, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    iput-object v5, v5, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iput-object v5, v5, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_a5

    move-object v4, v5

    :goto_29
    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    iget-object v7, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    move-object v4, v7

    :goto_2e
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v8, p1, :cond_6e

    :cond_32
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v8, p1, :cond_73

    new-instance v6, Landroid/os/Broadcaster$Registration;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$Registration;)V

    iput p1, v6, Landroid/os/Broadcaster$Registration;->senderWhat:I

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/os/Handler;

    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iput-object v4, v6, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v6, v8, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iput-object v6, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iget-object v8, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v4, v8, :cond_60

    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v9, v6, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le v8, v9, :cond_60

    iput-object v6, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    :cond_60
    move-object v4, v6

    const/4 v1, 0x0

    :goto_62
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v8, v1

    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v8, v1
    :try_end_6a
    .catchall {:try_start_2b .. :try_end_6a} :catchall_6b

    goto :goto_29

    :catchall_6b
    move-exception v8

    :goto_6c
    monitor-exit p0

    throw v8

    :cond_6e
    :try_start_6e
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-eq v4, v7, :cond_32

    goto :goto_2e

    :cond_73
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v1, v8

    iget-object v2, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v3, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v0, 0x0

    :goto_7b
    if-ge v0, v1, :cond_8a

    aget-object v8, v2, v0

    if-ne v8, p2, :cond_87

    aget v8, v3, v0
    :try_end_83
    .catchall {:try_start_6e .. :try_end_83} :catchall_6b

    if-ne v8, p3, :cond_87

    monitor-exit p0

    return-void

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_8a
    add-int/lit8 v8, v1, 0x1

    :try_start_8c
    new-array v8, v8, [Landroid/os/Handler;

    iput-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v1, 0x1

    new-array v8, v8, [I

    iput-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v9, v8, v10, v1}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_a4
    .catchall {:try_start_8c .. :try_end_a4} :catchall_6b

    goto :goto_62

    :catchall_a5
    move-exception v8

    move-object v4, v5

    goto :goto_6c
.end method
