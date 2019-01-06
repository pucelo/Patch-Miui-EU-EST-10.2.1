.class public Lcom/miui/server/SecSpaceManagerService;
.super Ljava/lang/Object;
.source "SecSpaceManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SecSpaceManagerService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "SecSpaceManagerService"

    const-string/jumbo v1, "init SecSpaceManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtils;->hasSecondSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->startSecSpace(Landroid/content/Context;)V

    :cond_17
    return-void
.end method

.method private static startSecSpace(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycore"

    const-string/jumbo v3, "com.miui.securityspace.service.SecondSpaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
