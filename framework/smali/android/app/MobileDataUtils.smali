.class public Landroid/app/MobileDataUtils;
.super Landroid/app/BaseMobileDataUtils;
.source "MobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/BaseMobileDataUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/MobileDataUtils;
    .registers 4

    :try_start_0
    const-string/jumbo v3, "miui.msim.util.MSimMobileDataUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MobileDataUtils;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    :cond_11
    new-instance v3, Landroid/app/MobileDataUtils;

    invoke-direct {v3}, Landroid/app/MobileDataUtils;-><init>()V

    return-object v3
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .registers 5

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method public getMobileDataUri(I)Landroid/net/Uri;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .registers 5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_14

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    return v1

    :cond_14
    invoke-super {p0, p1}, Landroid/app/BaseMobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/MobileDataUtils;->getMobileDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/app/MobileDataUtils;->getMobileDataUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2a
    return-void
.end method
