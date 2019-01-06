.class public final Landroid/util/VirtualSim;
.super Ljava/lang/Object;
.source "VirtualSim.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportMiSim(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.virtualsim"

    const-string/jumbo v2, "com.miui.mimobile.ui.MmRouterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/util/VirtualSim;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string/jumbo v1, "LTE-CMCC"

    const-string/jumbo v2, "persist.radio.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2a

    :cond_28
    const/4 v1, 0x0

    return v1

    :cond_2a
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportVirtualSim(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.virtualsim"

    const-string/jumbo v2, "com.miui.virtualsim.ui.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/util/VirtualSim;->isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    return v1

    :cond_16
    const/4 v1, 0x1

    return v1
.end method
