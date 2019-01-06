.class Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mSyncContext:Landroid/content/SyncContext;

.field private final mThreadsKey:Landroid/accounts/Account;

.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method static synthetic -get0(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -get1(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .registers 2

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 8

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    invoke-static {p1, p5}, Landroid/content/AbstractThreadedSyncAdapter;->-wrap0(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method private isCanceled()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, 0x80

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v5, Landroid/content/SyncResult;

    invoke-direct {v5}, Landroid/content/SyncResult;-><init>()V

    const/4 v4, 0x0

    :try_start_21
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "Already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_36} :catch_df
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_36} :catch_136
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_36} :catch_136
    .catchall {:try_start_21 .. :try_end_36} :catchall_147

    :cond_36
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_44
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4b
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_67

    monitor-exit v1

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-void

    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6a
    :try_start_6a
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_79

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "Calling onPerformSync..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get3(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    if-eqz v4, :cond_db

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    :goto_96
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "onPerformSync done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_a5} :catch_df
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_a5} :catch_136
    .catch Ljava/lang/Error; {:try_start_6a .. :try_end_a5} :catch_136
    .catchall {:try_start_6a .. :try_end_a5} :catchall_147

    :cond_a5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v4, :cond_ad

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    :cond_ad
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_b8
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_bf
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca
    .catchall {:try_start_bf .. :try_end_ca} :catchall_133

    monitor-exit v1

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_da

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    return-void

    :cond_db
    const/4 v0, 0x1

    :try_start_dc
    iput-boolean v0, v5, Landroid/content/SyncResult;->databaseError:Z
    :try_end_de
    .catch Ljava/lang/SecurityException; {:try_start_dc .. :try_end_de} :catch_df
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_de} :catch_136
    .catch Ljava/lang/Error; {:try_start_dc .. :try_end_de} :catch_136
    .catchall {:try_start_dc .. :try_end_de} :catchall_147

    goto :goto_96

    :catch_df
    move-exception v6

    :try_start_e0
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "SecurityException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ef
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/content/SyncResult;->databaseError:Z
    :try_end_fd
    .catchall {:try_start_e0 .. :try_end_fd} :catchall_147

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v4, :cond_105

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    :cond_105
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_110

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_110
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_117
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_122
    .catchall {:try_start_117 .. :try_end_122} :catchall_17e

    monitor-exit v1

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_da

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :catchall_133
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_136
    move-exception v7

    :try_start_137
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_146

    const-string/jumbo v0, "SyncAdapter"

    const-string/jumbo v1, "caught exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_146
    throw v7
    :try_end_147
    .catchall {:try_start_137 .. :try_end_147} :catchall_147

    :catchall_147
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v4, :cond_150

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    :cond_150
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_15b

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_15b
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_162
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16d
    .catchall {:try_start_162 .. :try_end_16d} :catchall_181

    monitor-exit v1

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v1

    if-eqz v1, :cond_17d

    const-string/jumbo v1, "SyncAdapter"

    const-string/jumbo v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17d
    throw v0

    :catchall_17e
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_181
    move-exception v0

    monitor-exit v1

    throw v0
.end method
