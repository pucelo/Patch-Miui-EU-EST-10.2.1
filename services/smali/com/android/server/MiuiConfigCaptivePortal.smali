.class public Lcom/android/server/MiuiConfigCaptivePortal;
.super Ljava/lang/Object;
.source "MiuiConfigCaptivePortal.java"


# static fields
.field private static final CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "connect.rom.miui.com"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_and_wifi_roam"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static final getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/provider/MiuiSettings$System;->isInCnRegion()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const-string/jumbo p0, "connect.rom.miui.com"

    goto :goto_6
.end method

.method public static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .registers 11

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    if-eqz p1, :cond_12

    const-string/jumbo v5, "http"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "captive_portal_server"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    :try_start_1f
    const-string/jumbo v5, "com.android.server.connectivity.NetworkMonitor"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "DEFAULT_SERVER"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_38} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_38} :catch_46

    :cond_38
    :goto_38
    if-eqz v4, :cond_50

    :try_start_3a
    new-instance v5, Ljava/net/URL;

    const-string/jumbo v6, "http"

    const-string/jumbo v7, "/generate_204"

    invoke-direct {v5, v6, v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/net/MalformedURLException; {:try_start_3a .. :try_end_45} :catch_56

    :goto_45
    return-object v5

    :catch_46
    move-exception v3

    const-string/jumbo v4, "connect.rom.miui.com"

    goto :goto_38

    :catch_4b
    move-exception v2

    const-string/jumbo v4, "connect.rom.miui.com"

    goto :goto_38

    :cond_50
    :try_start_50
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/net/MalformedURLException; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_45

    :catch_56
    move-exception v1

    return-object v8
.end method
