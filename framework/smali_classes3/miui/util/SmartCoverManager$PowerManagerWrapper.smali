.class Lmiui/util/SmartCoverManager$PowerManagerWrapper;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerManagerWrapper"
.end annotation


# instance fields
.field final GO_TO_SLEEP:Ljava/lang/String;

.field final GO_TO_SLEEP_FLAG_NO_DOZE:I

.field final GO_TO_SLEEP_REASON_LID_SWITCH:I

.field final WAKE_UP:Ljava/lang/String;

.field mPowerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lmiui/util/SmartCoverManager;


# direct methods
.method constructor <init>(Lmiui/util/SmartCoverManager;Landroid/os/PowerManager;)V
    .registers 4

    iput-object p1, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP_REASON_LID_SWITCH:I

    const/4 v0, 0x1

    iput v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP_FLAG_NO_DOZE:I

    const-string/jumbo v0, "wakeUp"

    iput-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->WAKE_UP:Ljava/lang/String;

    const-string/jumbo v0, "goToSleep"

    iput-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP:Ljava/lang/String;

    iput-object p2, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private varargs callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_3
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_c} :catch_10

    move-result-object v3

    :goto_d
    if-nez v3, :cond_15

    return v5

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_d

    :cond_15
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_18
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_1d} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_1d} :catch_1e

    return v6

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return v5

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v5
.end method

.method private isAutoBrightnessMode()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v2}, Lmiui/util/SmartCoverManager;->-get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v4}, Lmiui/util/SmartCoverManager;->-get1(Lmiui/util/SmartCoverManager;)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_18

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17
.end method

.method private restoreScreenBrightnessByLid()V
    .registers 9

    const-string/jumbo v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    :try_start_b
    invoke-direct {p0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->isAutoBrightnessMode()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v4}, Lmiui/util/SmartCoverManager;->-get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_auto_brightness_adj"

    iget-object v6, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v6}, Lmiui/util/SmartCoverManager;->-get1(Lmiui/util/SmartCoverManager;)I

    move-result v6

    const/high16 v7, 0x7fc00000    # Float.NaN

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    :goto_29
    return-void

    :cond_2a
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v4}, Lmiui/util/SmartCoverManager;->-get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness"

    iget-object v6, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    iget-object v7, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v7}, Lmiui/util/SmartCoverManager;->-get1(Lmiui/util/SmartCoverManager;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_46} :catch_47

    goto :goto_29

    :catch_47
    move-exception v0

    const-string/jumbo v4, "SmartCoverManager"

    const-string/jumbo v5, "exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method


# virtual methods
.method goToSleep()V
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string/jumbo v0, "goToSleep"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v1, v2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_3c
    return-void
.end method

.method wakeUp()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->restoreScreenBrightnessByLid()V

    const-string/jumbo v0, "wakeUp"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "lid switch open"

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_33
    return-void
.end method
