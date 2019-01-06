.class public Lmiui/util/AutoDisableScreenButtonsHelper;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsHelper.java"


# static fields
.field public static final CLOUD_SETTING:Ljava/lang/String; = "auto_disable_screen_button_cloud_setting"

.field public static final ENABLE_ASK:I = 0x1

.field public static final ENABLE_AUTO:I = 0x2

.field public static final MODULE_AUTO_DIS_NAV_BTN:Ljava/lang/String; = "AutoDisableNavigationButton1"

.field public static final NO:I = 0x3

.field public static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoDisableHelper"

.field private static mCloudJson:Lorg/json/JSONObject;

.field private static mUserJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkJson(Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_disable_screen_button"

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sput-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    :cond_1f
    :goto_1f
    sget-object v2, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-nez v2, :cond_31

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_disable_screen_button_cloud_setting"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V

    :cond_31
    return-void

    :cond_32
    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x3

    :goto_7
    return v0

    :cond_8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    :try_start_4
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_17

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_17
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_2e

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_28} :catch_2a

    move-result-object v1

    return-object v1

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2e
    return-object v2
.end method

.method public static setFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_22

    if-eqz p0, :cond_22

    :try_start_9
    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_23

    :goto_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_disable_screen_button"

    sget-object v3, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e
.end method

.method public static updateCloudJson(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_17

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    return-void

    :cond_17
    :try_start_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method public static updateUserJson(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v1, :cond_17

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    return-void

    :cond_17
    :try_start_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method
