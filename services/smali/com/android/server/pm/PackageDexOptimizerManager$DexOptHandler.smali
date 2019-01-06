.class Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;
.super Landroid/os/Handler;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexOptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageDexOptimizerManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V
    .registers 13

    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v8, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v8

    :try_start_5
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v7, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_8a

    move-result v7

    if-nez v7, :cond_13

    monitor-exit v8

    return-void

    :cond_13
    monitor-exit v8

    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PerformDexOpt for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/high16 v4, -0x80000000

    :try_start_3f
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->-get0()Ljava/lang/reflect/Method;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_cb
    .catchall {:try_start_3f .. :try_end_42} :catchall_ed

    move-result-object v7

    if-eqz v7, :cond_77

    :try_start_45
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->-get0()Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/high16 v9, -0x80000000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_6c} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6c} :catch_cb
    .catchall {:try_start_45 .. :try_end_6c} :catchall_ed

    :goto_6c
    if-eqz v6, :cond_c7

    :try_start_6e
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c7

    const/4 v7, 0x1

    iput v7, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_cb
    .catchall {:try_start_6e .. :try_end_77} :catchall_ed

    :cond_77
    :goto_77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7a
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v8, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v8

    :try_start_7f
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v7, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_f2

    monitor-exit v8

    return-void

    :catchall_8a
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_8d
    move-exception v3

    :try_start_8e
    const-string/jumbo v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalArgumentException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->-get0()Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_6c

    :cond_c7
    const/4 v7, -0x1

    iput v7, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_ca} :catch_cb
    .catchall {:try_start_8e .. :try_end_ca} :catchall_ed

    goto :goto_77

    :catch_cb
    move-exception v2

    const/4 v7, -0x1

    :try_start_cd
    iput v7, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    const-string/jumbo v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_cd .. :try_end_e9} :catchall_ed

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7a

    :catchall_ed
    move-exception v7

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :catchall_f2
    move-exception v7

    monitor-exit v8

    throw v7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2a

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v2, :cond_15

    :try_start_e
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmiui/os/IMiuiDexoptObserver;->onStart(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_28

    :cond_15
    :goto_15
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V

    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v2, :cond_5

    :try_start_1c
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    invoke-interface {v2, v3, v4}, Lmiui/os/IMiuiDexoptObserver;->onFinished(Ljava/lang/String;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_5

    :catch_26
    move-exception v0

    goto :goto_5

    :catch_28
    move-exception v0

    goto :goto_15

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
