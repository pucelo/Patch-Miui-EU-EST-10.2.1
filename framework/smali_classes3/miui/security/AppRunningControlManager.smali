.class public Lmiui/security/AppRunningControlManager;
.super Ljava/lang/Object;
.source "AppRunningControlManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRunningControlManager"

.field private static sInstance:Lmiui/security/AppRunningControlManager;


# instance fields
.field private mService:Lmiui/security/IAppRunningControlManager;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/security/IAppRunningControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    return-void
.end method

.method public static getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 12

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_13

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_13

    return-object v6

    :cond_13
    return-object v6
.end method

.method private getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 9

    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p2, p3, p4, p5}, Lmiui/security/IAppRunningControlManager;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lmiui/security/AppRunningControlManager;
    .registers 6

    const/4 v5, 0x0

    sget-object v3, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    if-nez v3, :cond_27

    :try_start_5
    const-string/jumbo v3, "security"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/security/ISecurityManager;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_20

    const-string/jumbo v3, "AppRunningControlManager"

    const-string/jumbo v4, "AppRunningControlIBinder is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_20
    new-instance v3, Lmiui/security/AppRunningControlManager;

    invoke-direct {v3, v1}, Lmiui/security/AppRunningControlManager;-><init>(Landroid/os/IBinder;)V

    sput-object v3, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2a

    :cond_27
    sget-object v3, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    return-object v3

    :catch_2a
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system service died"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static matchRule(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {v0, p0, p1}, Lmiui/security/AppRunningControlManager;->matchRuleInner(Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private matchRuleInner(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/IAppRunningControlManager;->matchRule(Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getNotDisallowList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1}, Lmiui/security/IAppRunningControlManager;->getNotDisallowList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public setBlackListEnable(Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p1}, Lmiui/security/IAppRunningControlManager;->setBlackListEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/IAppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
