.class public abstract Lmiui/util/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_20
    if-nez v0, :cond_25

    const-string/jumbo v0, ""

    :cond_25
    return-object v0
.end method
