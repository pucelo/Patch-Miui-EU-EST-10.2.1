.class Landroid/net/CaptivePortalTrackerInjector;
.super Ljava/lang/Object;
.source "CaptivePortalTrackerInjector.java"


# static fields
.field private static final CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "http://connect.rom.miui.com/generate_204"

.field private static final CN_OPERATOR:Ljava/lang/String; = "460"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "CN"

    invoke-static {v2}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1c
    invoke-static {v0}, Landroid/net/CaptivePortalTrackerInjector;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_22
    const-string/jumbo p1, "http://connect.rom.miui.com/generate_204"

    :cond_25
    return-object p1
.end method

.method static isCnFromOperator(Ljava/lang/String;)Z
    .registers 4

    const/4 v2, 0x3

    const-string/jumbo v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_15
    const-string/jumbo v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
