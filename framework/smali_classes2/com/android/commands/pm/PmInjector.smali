.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# static fields
.field private static final PM:Ljava/lang/String; = "Pm"

.field public static final STATUS_INVALID_APK:I = 0x3

.field public static final STATUS_REJECT:I = -0x1

.field public static final STATUS_SUCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserId()I
    .registers 5

    :try_start_0
    const-string/jumbo v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result v4

    return v4

    :catch_2b
    move-exception v0

    :cond_2c
    const/4 v4, -0x1

    return v4
.end method

.method public static installVerify(Ljava/lang/String;)I
    .registers 14

    const/4 v12, -0x1

    const/4 v11, 0x2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "com.miui.securitycenter"

    const-string/jumbo v9, "com.miui.permcenter.install.AdbInstallActivity"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "application/vnd.android.package-archive"

    invoke-virtual {v5, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v0}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    const-string/jumbo v8, "observer"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/high16 v8, 0x18000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_32
    invoke-static {v5}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v7

    if-eqz v7, :cond_76

    const-string/jumbo v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start PackageInstallerActivity failed ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_5c} :catch_61

    move-result v8

    if-nez v8, :cond_60

    return v11

    :cond_60
    return v12

    :catch_61
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v8, "Pm"

    const-string/jumbo v9, "start PackageInstallerActivity RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v8

    if-nez v8, :cond_75

    return v11

    :cond_75
    return v12

    :cond_76
    monitor-enter v0

    :goto_77
    :try_start_77
    iget-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_cc

    if-nez v8, :cond_87

    const-wide/32 v8, 0xea60

    :try_start_7e
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/pm/PmInjector$InstallObserver;->wait(J)V

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_84} :catch_85
    .catchall {:try_start_7e .. :try_end_84} :catchall_cc

    goto :goto_77

    :catch_85
    move-exception v3

    goto :goto_77

    :cond_87
    :try_start_87
    iget v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_cc

    if-ne v8, v12, :cond_8d

    monitor-exit v0

    return v11

    :cond_8d
    :try_start_8d
    iget-object v6, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    if-nez v6, :cond_94

    const-string/jumbo v6, "Failure [INSTALL_CANCELED_BY_USER]"

    :cond_94
    const-string/jumbo v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install msg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "Invalid apk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c2

    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z
    :try_end_ba
    .catchall {:try_start_8d .. :try_end_ba} :catchall_cc

    move-result v8

    if-nez v8, :cond_bf

    monitor-exit v0

    return v11

    :cond_bf
    const/4 v8, 0x3

    monitor-exit v0

    return v8

    :cond_c2
    :try_start_c2
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_cc

    move-result v8

    if-nez v8, :cond_ca

    monitor-exit v0

    return v11

    :cond_ca
    monitor-exit v0

    return v12

    :catchall_cc
    move-exception v8

    monitor-exit v0

    throw v8
.end method

.method public static isSecurityCenterExist()Z
    .registers 7

    const/4 v6, 0x1

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-nez v2, :cond_8

    return v6

    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string/jumbo v2, "Pm"

    const-string/jumbo v3, "checkSecurityCenterInstalled:getPackageInfo:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_24

    if-eqz v1, :cond_43

    return v6

    :catch_24
    move-exception v0

    const-string/jumbo v2, "Pm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageInfo error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const-string/jumbo v2, "Pm"

    const-string/jumbo v3, "checkSecurityCenterInstalled:Exception:false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static statusToString(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_14

    :goto_6
    :pswitch_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "Install canceled by user"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "Sucess"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "Invalid apk"

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
