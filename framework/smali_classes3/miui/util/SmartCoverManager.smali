.class public Lmiui/util/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SmartCoverManager$PowerManagerWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_SMART_COVER_GUIDE:Ljava/lang/String; = "miui.intent.action.SMART_COVER_GUIDE"

.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final IS_D4:Z

.field private static final LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x3a98

.field private static final LID_SWITCH_OPEN:Ljava/lang/String; = "lid switch open"

.field private static final MULTI:Z

.field private static final POWER:Ljava/lang/String; = "power"

.field private static final SETTINGS_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final SMART_COVER_GUIDE_ACTIVITY:Ljava/lang/String; = "com.android.settings.MiuiSmartCoverGuideActivity"

.field private static final SMART_COVER_LID_OPEN:Ljava/lang/String; = "mSmartCoverLidOpen="

.field private static final SMART_COVER_MODE:Ljava/lang/String; = "mSmartCoverMode="

.field private static final SUPPORT_MULTIPLE_SMALL_WIN_COVER:Ljava/lang/String; = "support_multiple_small_win_cover"

.field private static final TAG:Ljava/lang/String; = "SmartCoverManager"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mNeedResetTimeout:Z

.field private mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

.field private mSmartCoverLidOpen:Z

.field private mSmartCoverMode:I


# direct methods
.method static synthetic -get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/util/SmartCoverManager;)I
    .registers 2

    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "support_multiple_small_win_cover"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/SmartCoverManager;->MULTI:Z

    const-string/jumbo v0, "oxygen"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "oxygen"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1e
    sput-boolean v0, Lmiui/util/SmartCoverManager;->IS_D4:Z

    return-void

    :cond_21
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    return-void
.end method

.method private checkSmartCoverEnable()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "persist.sys.smartcover_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    if-nez v0, :cond_13

    iput-boolean v3, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    return v2

    :cond_13
    return v3
.end method

.method public static deviceDisableKeysWhenLidClose()Z
    .registers 4

    const/4 v0, 0x1

    sget-boolean v1, Lmiui/util/SmartCoverManager;->IS_D4:Z

    if-eqz v1, :cond_29

    const/4 v0, 0x0

    const-string/jumbo v1, "SmartCoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not disable keys when LidClose."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v0
.end method

.method private enableInSmallWinMode(Z)Z
    .registers 7

    iget v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v2, 0x2

    if-gt v2, v1, :cond_18

    const/4 v0, 0x1

    :goto_6
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "is_small_window"

    if-eqz p1, :cond_1a

    move v1, v0

    :goto_12
    iget v4, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_6

    :cond_1a
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private guideSmartCoverSettingIfNeeded(Z)V
    .registers 8

    const/4 v4, 0x0

    if-nez p1, :cond_9

    sget-boolean v1, Lmiui/util/SmartCoverManager;->MULTI:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "smart_cover_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/SmartCoverManager;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "smart_cover_key"

    invoke-static {v1, v2, v4, v4}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.SMART_COVER_GUIDE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.MiuiSmartCoverGuideActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_48
    return-void
.end method

.method private handleLidSwitchChanged(ZZ)V
    .registers 6

    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez p1, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    :cond_8
    if-eqz p2, :cond_20

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.SMART_COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "is_smart_cover_open"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_20
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p1, :cond_33

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->goToSleep()V

    :cond_2f
    :goto_2f
    invoke-direct {p0, p1}, Lmiui/util/SmartCoverManager;->updateScreenOffTimeoutIfNeeded(Z)V

    return-void

    :cond_33
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->wakeUp()V

    goto :goto_2f
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private setScreenOffByLid(Z)V
    .registers 7

    if-eqz p1, :cond_c

    const-string/jumbo v1, "true"

    :goto_5
    :try_start_5
    const-string/jumbo v2, "sys.keyguard.screen_off_by_lid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_10

    :goto_b
    return-void

    :cond_c
    const-string/jumbo v1, "false"

    goto :goto_5

    :catch_10
    move-exception v0

    const-string/jumbo v2, "SmartCoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set screen off by lid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private triggerScreenOffTimeout(Z)V
    .registers 6

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    if-eqz p1, :cond_1a

    const/16 v0, 0x3a98

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "need_reset_screen_off_timeout"

    iget-boolean v2, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void

    :cond_1a
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method private updateScreenOffTimeoutIfNeeded(Z)V
    .registers 8

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const-wide/16 v4, 0x3a98

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v4, v2

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_20

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_20
    if-eqz p1, :cond_1d

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    goto :goto_1d
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSmartCoverLidOpen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSmartCoverMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enableLidAfterBoot(I)Z
    .registers 9

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    iget v2, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v3, -0x1

    if-ne v3, v2, :cond_11

    sget-boolean v2, Lmiui/util/SmartCoverManager;->MULTI:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    :cond_11
    const/4 v0, 0x0

    iget v2, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v3, 0x2

    if-gt v3, v2, :cond_3f

    const/4 v1, 0x1

    :goto_18
    if-eqz v1, :cond_1d

    if-nez p1, :cond_41

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "need_reset_screen_off_timeout"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_off_timeout"

    const v4, 0x7fffffff

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "need_reset_screen_off_timeout"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    :cond_3e
    return v1

    :cond_3f
    const/4 v1, 0x0

    goto :goto_18

    :cond_41
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getSmartCoverLidOpen()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    return v0
.end method

.method public getSmartCoverMode()I
    .registers 2

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/os/PowerManager;)V
    .registers 4

    iput-object p1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-direct {v0, p0, p2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;-><init>(Lmiui/util/SmartCoverManager;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    return-void
.end method

.method public notifyLidSwitchChanged(ZZ)Z
    .registers 5

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->guideSmartCoverSettingIfNeeded(Z)V

    if-nez v0, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    invoke-direct {p0, p1, p2}, Lmiui/util/SmartCoverManager;->handleLidSwitchChanged(ZZ)V

    const/4 v1, 0x1

    return v1
.end method

.method public notifyScreenTurningOn()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    :cond_8
    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_16

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    :cond_16
    return v0
.end method

.method public onUserSwitch(I)V
    .registers 3

    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    return-void
.end method
