.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get4(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const v7, 0x4000040

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_b5

    :try_start_1d
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get3(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_24
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1d .. :try_end_24} :catch_6b

    :try_start_24
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-wrap0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/io/File;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_a6
    .catchall {:try_start_24 .. :try_end_29} :catchall_b2

    :try_start_29
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get5(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get2(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v4

    const/16 v6, 0x7d0

    if-ne v4, v6, :cond_41

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->-wrap4(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;)V
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_b2

    :cond_41
    :try_start_41
    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get0(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->-get6(Lcom/android/server/pm/PackageInstallerSession;)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerSession;->-get2(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v7}, Lcom/android/server/pm/PackageInstallerSession;->-get1(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b5

    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v5, "Failed INSTALL_CANCELED_BY_USER"

    const/16 v6, -0x6f

    invoke-direct {v4, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_6b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_41 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Commit of session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;)V

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v4, v5, v0, v8}, Lcom/android/server/pm/PackageInstallerSession;->-wrap3(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    return v9

    :catch_a6
    move-exception v2

    :try_start_a7
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v6, "Failed to resolve stage location"

    const/16 v7, -0x12

    invoke-direct {v4, v7, v6, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v4

    :try_start_b3
    monitor-exit v5

    throw v4
    :try_end_b5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b3 .. :try_end_b5} :catch_6b

    :cond_b5
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_118

    :goto_ba
    return v9

    :pswitch_bb
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-get3(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_c2
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-wrap1(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_c7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_c2 .. :try_end_c7} :catch_c9
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_105

    :goto_c7
    monitor-exit v5

    goto :goto_ba

    :catch_c9
    move-exception v1

    :try_start_ca
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Commit of session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;)V

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v7, 0x0

    invoke-static {v4, v6, v0, v7}, Lcom/android/server/pm/PackageInstallerSession;->-wrap3(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_104
    .catchall {:try_start_ca .. :try_end_104} :catchall_105

    goto :goto_c7

    :catchall_105
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerException;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8}, Lcom/android/server/pm/PackageInstallerSession;->-wrap3(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_ba

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_108
    .end packed-switch
.end method
