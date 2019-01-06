.class final Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Lcom/android/server/am/ActivityManagerService$OomAdjObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# static fields
.field static final STATE_NORMAL:I


# instance fields
.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field final mPw:Ljava/io/PrintWriter;

.field mState:I

.field final mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V
    .registers 5

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    iput p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    return-void
.end method


# virtual methods
.method public onOomAdjMessage(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "# "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUidActive(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " active"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUidCachedChanged(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    if-eqz p2, :cond_17

    const-string/jumbo v0, " cached"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    const-string/jumbo v0, " uncached"
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_d

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUidGone(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " gone"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUidIdle(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " idle"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUidStateChanged(IIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " procstate "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " seq "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method printMessageForState()V
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    packed-switch v0, :pswitch_data_18

    :goto_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "(q)uit: finish watching"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "Watching uid states...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method run()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    const/16 v6, 0x1f

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-interface {v5, p0, v6, v7, v8}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iget v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v5, :cond_1c

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    invoke-virtual {v5, v6, p0}, Lcom/android/server/am/ActivityManagerService;->setOomAdjObserver(ILcom/android/server/am/ActivityManagerService$OomAdjObserver;)V

    :cond_1c
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7a

    const/4 v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_68

    const/4 v0, 0x0

    :goto_39
    monitor-enter p0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_4e
    .catchall {:try_start_0 .. :try_end_3a} :catchall_a3

    if-eqz v0, :cond_44

    :try_start_3c
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_44
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_b3

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4d} :catch_4e
    .catchall {:try_start_4c .. :try_end_4d} :catchall_a3

    goto :goto_2b

    :catch_4e
    move-exception v2

    :try_start_4f
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2, v5}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_a3

    iget v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v5, :cond_62

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    :cond_62
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v5, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    :goto_67
    return-void

    :cond_68
    :try_start_68
    const-string/jumbo v5, "q"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    const-string/jumbo v5, "quit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_77} :catch_4e
    .catchall {:try_start_68 .. :try_end_77} :catchall_a3

    move-result v5

    if-eqz v5, :cond_89

    :cond_7a
    iget v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v5, :cond_83

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    :cond_83
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v5, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    goto :goto_67

    :cond_89
    :try_start_89
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a2} :catch_4e
    .catchall {:try_start_89 .. :try_end_a2} :catchall_a3

    goto :goto_39

    :catchall_a3
    move-exception v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v6, :cond_ad

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    :cond_ad
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    throw v5

    :catchall_b3
    move-exception v5

    :try_start_b4
    monitor-exit p0

    throw v5
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b6} :catch_4e
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_a3
.end method
