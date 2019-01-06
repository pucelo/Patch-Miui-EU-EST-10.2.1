.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_87
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_8} :catch_87
    .catchall {:try_start_1 .. :try_end_8} :catchall_98

    :try_start_8
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get2(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_84

    move-result-object v6

    if-ne v4, v6, :cond_16

    move-object v2, v0

    :cond_31
    :try_start_31
    monitor-exit v5

    if-eqz v2, :cond_af

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_67

    const-string/jumbo v4, "SyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cancelSync() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get1(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->-get0(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->-get1(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_a9

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v4, v2}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_74} :catch_87
    .catch Ljava/lang/Error; {:try_start_31 .. :try_end_74} :catch_87
    .catchall {:try_start_31 .. :try_end_74} :catchall_98

    :cond_74
    :goto_74
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_83

    const-string/jumbo v4, "SyncAdapter"

    const-string/jumbo v5, "cancelSync() finishing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-void

    :catchall_84
    move-exception v4

    :try_start_85
    monitor-exit v5

    throw v4
    :try_end_87
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_87} :catch_87
    .catch Ljava/lang/Error; {:try_start_85 .. :try_end_87} :catch_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_98

    :catch_87
    move-exception v3

    :try_start_88
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_97

    const-string/jumbo v4, "SyncAdapter"

    const-string/jumbo v5, "cancelSync() caught exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    throw v3
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception v4

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v5

    if-eqz v5, :cond_a8

    const-string/jumbo v5, "SyncAdapter"

    const-string/jumbo v6, "cancelSync() finishing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    throw v4

    :cond_a9
    :try_start_a9
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v4}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_74

    :cond_af
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v4

    if-eqz v4, :cond_74

    const-string/jumbo v4, "SyncAdapter"

    const-string/jumbo v5, "cancelSync() unknown context"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_be} :catch_87
    .catch Ljava/lang/Error; {:try_start_a9 .. :try_end_be} :catch_87
    .catchall {:try_start_a9 .. :try_end_be} :catchall_98

    goto :goto_74
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 18

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3f

    if-eqz p4, :cond_b

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->size()I

    :cond_b
    const-string/jumbo v2, "SyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSync() start "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :try_start_3f
    new-instance v4, Landroid/content/SyncContext;

    invoke-direct {v4, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Landroid/content/AbstractThreadedSyncAdapter;->-wrap0(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v11

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get5(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_53} :catch_a9
    .catch Ljava/lang/Error; {:try_start_3f .. :try_end_53} :catch_a9
    .catchall {:try_start_3f .. :try_end_53} :catchall_ba

    :try_start_53
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11b

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get2(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v2

    if-eqz v2, :cond_cb

    if-eqz p4, :cond_cb

    const-string/jumbo v2, "initialize"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_72
    .catchall {:try_start_53 .. :try_end_72} :catchall_a6

    move-result v2

    if-eqz v2, :cond_cb

    :try_start_75
    move-object/from16 v0, p3

    invoke-static {v0, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_83

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, p2, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_83
    .catchall {:try_start_75 .. :try_end_83} :catchall_9c

    :cond_83
    :try_start_83
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_a6

    :try_start_8b
    monitor-exit v12
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_8c} :catch_a9
    .catch Ljava/lang/Error; {:try_start_8b .. :try_end_8c} :catch_a9
    .catchall {:try_start_8b .. :try_end_8c} :catchall_ba

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_9b

    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    return-void

    :catchall_9c
    move-exception v2

    :try_start_9d
    new-instance v3, Landroid/content/SyncResult;

    invoke-direct {v3}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    throw v2
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v12

    throw v2
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_a9} :catch_a9
    .catch Ljava/lang/Error; {:try_start_a7 .. :try_end_a9} :catch_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_ba

    :catch_a9
    move-exception v10

    :try_start_aa
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() caught exception"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b9
    throw v10
    :try_end_ba
    .catchall {:try_start_aa .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v2

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v3

    if-eqz v3, :cond_ca

    const-string/jumbo v3, "SyncAdapter"

    const-string/jumbo v5, "startSync() finishing"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    throw v2

    :cond_cb
    :try_start_cb
    new-instance v1, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SyncAdapterThread-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v5}, Landroid/content/AbstractThreadedSyncAdapter;->-get4(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)V

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->-get6(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V
    :try_end_102
    .catchall {:try_start_cb .. :try_end_102} :catchall_a6

    const/4 v9, 0x0

    :goto_103
    :try_start_103
    monitor-exit v12

    if-eqz v9, :cond_10b

    sget-object v2, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v4, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_10b
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_10b} :catch_a9
    .catch Ljava/lang/Error; {:try_start_103 .. :try_end_10b} :catch_a9
    .catchall {:try_start_103 .. :try_end_10b} :catchall_ba

    :cond_10b
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_11a

    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "startSync() finishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    return-void

    :cond_11b
    :try_start_11b
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_12a

    const-string/jumbo v2, "SyncAdapter"

    const-string/jumbo v3, "  alreadyInProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catchall {:try_start_11b .. :try_end_12a} :catchall_a6

    :cond_12a
    const/4 v9, 0x1

    goto :goto_103
.end method
