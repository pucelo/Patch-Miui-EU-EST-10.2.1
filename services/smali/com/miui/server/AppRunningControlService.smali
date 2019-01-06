.class public Lcom/miui/server/AppRunningControlService;
.super Lmiui/security/IAppRunningControlManager$Stub;
.source "AppRunningControlService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRunningControlService"

.field private static sNotDisallow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppsDisallowRunning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisallowRunningAppIntent:Landroid/content/Intent;

.field private mIsBlackListEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lmiui/security/IAppRunningControlManager$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/server/AppRunningControlService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkPermission()V
    .registers 4

    iget-object v1, p0, Lcom/miui/server/AppRunningControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppRunningControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    return-void
.end method

.method public static isBlockActivity(Landroid/content/Intent;)Z
    .registers 4

    invoke-static {}, Lcom/miui/server/SecurityManagerService;->getAppRunningControlService()Lcom/miui/server/AppRunningControlService;

    move-result-object v0

    if-nez v0, :cond_11

    const-string/jumbo v1, "AppRunningControlService"

    const-string/jumbo v2, "AppRunningControlService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_11
    invoke-direct {v0, p0}, Lcom/miui/server/AppRunningControlService;->isBlockActivityInner(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private isBlockActivityInner(Landroid/content/Intent;)Z
    .registers 4

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    if-nez v1, :cond_8

    :cond_6
    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private matchRuleInner(Ljava/lang/String;I)Z
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/server/AppRunningControlService;->mIsBlackListEnable:Z

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 9

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/miui/server/AppRunningControlService;->mIsBlackListEnable:Z

    if-nez v1, :cond_8

    return-object v3

    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "AppRunningControlService"

    const-string/jumbo v2, "getBlockActivityIntent packageName can\'t be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_18
    iget-object v1, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3a

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3a
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_47

    if-ltz p4, :cond_46

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_46

    :cond_4d
    return-object v3
.end method

.method public getNotDisallowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    return-object v0
.end method

.method public matchRule(Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/server/AppRunningControlService;->matchRuleInner(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setBlackListEnable(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/AppRunningControlService;->checkPermission()V

    iput-boolean p1, p0, Lcom/miui/server/AppRunningControlService;->mIsBlackListEnable:Z

    return-void
.end method

.method public setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    .registers 7
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

    invoke-direct {p0}, Lcom/miui/server/AppRunningControlService;->checkPermission()V

    if-nez p2, :cond_f

    const-string/jumbo v2, "AppRunningControlService"

    const-string/jumbo v3, "setDisallowRunningList intent can\'t be null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iput-object p2, p0, Lcom/miui/server/AppRunningControlService;->mDisallowRunningAppIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_1e
    const-string/jumbo v2, "AppRunningControlService"

    const-string/jumbo v3, "setDisallowRunningList clear list."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/miui/server/AppRunningControlService;->sNotDisallow:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/miui/server/AppRunningControlService;->mAppsDisallowRunning:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_46
    return-void
.end method
