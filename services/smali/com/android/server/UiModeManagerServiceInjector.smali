.class Lcom/android/server/UiModeManagerServiceInjector;
.super Ljava/lang/Object;
.source "UiModeManagerServiceInjector.java"


# static fields
.field private static final IS_MEXICO_TELCEL:Z

.field private static final TAG:Ljava/lang/String; = "UiModeManagerInjector"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "mx_telcel"

    const-string/jumbo v1, "ro.miui.customized.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/UiModeManagerServiceInjector;->IS_MEXICO_TELCEL:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setDefaultFontSize(Landroid/content/Context;)V
    .registers 7

    sget-boolean v3, Lcom/android/server/UiModeManagerServiceInjector;->IS_MEXICO_TELCEL:Z

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    :cond_13
    return-void

    :cond_14
    const/16 v2, 0xc

    const-string/jumbo v3, "UiModeManagerInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultFontSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_30
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0xc

    if-eq v4, v3, :cond_6b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ui_mode_scale"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/content/res/MiuiConfiguration;->getFontScale(I)F

    move-result v3

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x10

    or-int/lit8 v3, v3, 0xc

    iput v3, v0, Landroid/content/res/Configuration;->uiMode:I

    sget-boolean v3, Lmiui/util/ExquisiteModeUtils;->SUPPORT_EXQUISITE_MODE:Z

    if-eqz v3, :cond_64

    iget-object v3, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    const-wide/32 v4, 0x10000000

    invoke-virtual {v3, v4, v5}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    :cond_64
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6b} :catch_6c

    :cond_6b
    :goto_6b
    return-void

    :catch_6c
    move-exception v1

    const-string/jumbo v3, "UiModeManagerInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultFontSize failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method
