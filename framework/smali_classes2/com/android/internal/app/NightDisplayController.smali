.class public final Lcom/android/internal/app/NightDisplayController;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NightDisplayController$Callback;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final PERSISTENT_PROPERTY_NATIVE_MODE:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final TAG:Ljava/lang/String; = "NightDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/NightDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    new-instance v0, Lcom/android/internal/app/NightDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/NightDisplayController$1;-><init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v0, :cond_16

    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onActivated(Z)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onAutoModeChanged(I)V

    goto :goto_16

    :cond_2a
    const-string/jumbo v0, "night_display_custom_start_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_16

    :cond_3d
    const-string/jumbo v0, "night_display_custom_end_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_16

    :cond_50
    const-string/jumbo v0, "night_display_color_temperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onColorTemperatureChanged(I)V

    goto :goto_16

    :cond_63
    const-string/jumbo v0, "display_color_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getColorMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onDisplayColorModeChanged(I)V

    goto :goto_16
.end method


# virtual methods
.method public getAutoMode()I
    .registers 6

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_auto_mode"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1f

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_1f
    if-eqz v0, :cond_42

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    const-string/jumbo v1, "NightDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid autoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_42
    return v0
.end method

.method public getColorMode()I
    .registers 8

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_color_mode"

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    const/4 v5, -0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_16

    if-le v0, v6, :cond_3a

    :cond_16
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "persist.sys.sf.native_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v6

    :cond_27
    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "persist.sys.sf.color_saturation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_37
    return v1

    :cond_38
    const/4 v1, 0x1

    goto :goto_37

    :cond_3a
    return v0
.end method

.method public getColorTemperature()I
    .registers 8

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_display_color_temperature"

    iget v5, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v6, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getDefaultColorTemperature()I

    move-result v0

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getMinimumColorTemperature()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getMaximumColorTemperature()I

    move-result v1

    if-ge v0, v2, :cond_22

    move v0, v2

    :cond_21
    :goto_21
    return v0

    :cond_22
    if-le v0, v1, :cond_21

    move v0, v1

    goto :goto_21
.end method

.method public getCustomEndTime()Ljava/time/LocalTime;
    .registers 6

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_custom_end_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1f

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_1f
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getCustomStartTime()Ljava/time/LocalTime;
    .registers 6

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_custom_start_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1f

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_1f
    div-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultColorTemperature()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getLastActivatedTime()Ljava/time/LocalDateTime;
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "night_display_last_activated_time"

    iget v5, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    :try_start_12
    invoke-static {v3}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    :try_end_15
    .catch Ljava/time/format/DateTimeParseException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v4

    return-object v4

    :catch_17
    move-exception v2

    :try_start_18
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    :try_end_27
    .catch Ljava/time/DateTimeException; {:try_start_18 .. :try_end_27} :catch_29
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_27} :catch_29

    move-result-object v4

    return-object v4

    :catch_29
    move-exception v1

    :cond_2a
    return-object v6
.end method

.method public getMaximumColorTemperature()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumColorTemperature()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isActivated()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_display_activated"

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public setActivated(Z)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-eq v0, p1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_activated_time"

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_activated"

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :goto_28
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public setAutoMode(I)Z
    .registers 6

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_37

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_last_activated_time"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_37
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setColorMode(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_color_mode"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setColorTemperature(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomEndTime(Ljava/time/LocalTime;)Z
    .registers 6

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomStartTime(Ljava/time/LocalTime;)Z
    .registers 6

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eq v1, p1, :cond_14

    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-nez p1, :cond_15

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    if-nez v1, :cond_14

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "display_color_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_14
.end method
