.class Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field private final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    return-void
.end method

.method private mapInstallerResultToApiCode(I)I
    .registers 3

    packed-switch p1, :pswitch_data_10

    const/4 v0, 0x1

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    :pswitch_9
    const/4 v0, 0x4

    return v0

    :pswitch_b
    const/4 v0, 0x3

    return v0

    :pswitch_d
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v11, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_d
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct {v3, v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    new-instance v0, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v0, v3}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get0(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v10, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v8, v10, v6}, Lcom/android/server/timezone/RulesManagerService;->-wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_3d} :catch_79
    .catchall {:try_start_d .. :try_end_3d} :catchall_be

    const/4 v7, 0x1

    if-eqz v5, :cond_43

    :try_start_40
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_77
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_46
    .catchall {:try_start_40 .. :try_end_43} :catchall_87

    :cond_43
    :goto_43
    if-eqz v9, :cond_a9

    :try_start_45
    throw v9
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_87

    :catch_46
    move-exception v1

    :try_start_47
    const-string/jumbo v8, "timezone.RulesManagerService"

    const-string/jumbo v9, "Failed to install distro."

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/server/timezone/RulesManagerService;->-wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_87

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_76
    return-void

    :catch_77
    move-exception v9

    goto :goto_43

    :catch_79
    move-exception v8

    :try_start_7a
    throw v8
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_7f
    if-eqz v5, :cond_84

    :try_start_81
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_46
    .catchall {:try_start_81 .. :try_end_84} :catchall_87

    :cond_84
    :goto_84
    if-eqz v9, :cond_a8

    :try_start_86
    throw v9
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_46
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v8

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v9, v10, v7}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v8

    :catch_9d
    move-exception v10

    if-nez v9, :cond_a2

    move-object v9, v10

    goto :goto_84

    :cond_a2
    if-eq v9, v10, :cond_84

    :try_start_a4
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_a8
    throw v8
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_46
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_87

    :cond_a9
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_76

    :catchall_be
    move-exception v8

    goto :goto_7f
.end method
