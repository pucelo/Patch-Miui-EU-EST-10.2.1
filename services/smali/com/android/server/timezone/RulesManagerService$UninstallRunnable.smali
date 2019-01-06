.class Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
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
    name = "UninstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallStarted(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-get0(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageUninstall()I

    move-result v3

    if-eqz v3, :cond_43

    if-ne v3, v5, :cond_45

    const/4 v2, 0x1

    :goto_1b
    if-eqz v2, :cond_47

    const/4 v0, 0x0

    :goto_1e
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v0}, Lcom/android/server/timezone/RulesManagerService;->-wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_49
    .catchall {:try_start_c .. :try_end_2e} :catchall_7a

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_42
    return-void

    :cond_43
    const/4 v2, 0x1

    goto :goto_1b

    :cond_45
    const/4 v2, 0x0

    goto :goto_1b

    :cond_47
    const/4 v0, 0x1

    goto :goto_1e

    :catch_49
    move-exception v1

    :try_start_4a
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string/jumbo v5, "Failed to uninstall distro."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/server/timezone/RulesManagerService;->-wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_7a

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_42

    :catchall_7a
    move-exception v4

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v5}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v5}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
.end method
