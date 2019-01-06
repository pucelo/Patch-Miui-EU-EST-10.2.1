.class public Lmiui/util/SystemAnalytics;
.super Ljava/lang/Object;
.source "SystemAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SystemAnalytics$Action;
    }
.end annotation


# static fields
.field public static final CONFIGKEY_BOOT_SHUT:Ljava/lang/String; = "systemserver_bootshuttime"

.field private static final LOGTYPE_EVENT:I = 0x0

.field private static final SYSTEM_APP_ID:Ljava/lang/String; = "systemserver"

.field private static final TAG:Ljava/lang/String; = "SystemAnalytics"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V
    .registers 7

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.analytics"

    const-string/jumbo v3, "com.miui.analytics.EventService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "key"

    if-eqz p1, :cond_54

    :goto_13
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "content"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "SystemAnalytics"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getContent()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "extra"

    invoke-virtual {p2}, Lmiui/util/SystemAnalytics$Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "appid"

    const-string/jumbo v3, "systemserver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_53
    return-void

    :cond_54
    const-string/jumbo p1, ""
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_13

    :catch_58
    move-exception v0

    const-string/jumbo v2, "SystemAnalytics"

    const-string/jumbo v3, "track system error!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method
