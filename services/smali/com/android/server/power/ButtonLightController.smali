.class public Lcom/android/server/power/ButtonLightController;
.super Ljava/lang/Object;
.source "ButtonLightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ButtonLightController$1;
    }
.end annotation


# static fields
.field static sButtonLight:Lcom/android/server/lights/Light;

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sHandler:Landroid/os/Handler;

.field static sIsScreenOn:Z

.field static sLightSensorButtonBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/ButtonLightController$1;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightController$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doTurnOffButtonLight()V
    .registers 2

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    return-void
.end method

.method static setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;)V
    .registers 9

    const/4 v5, 0x1

    sput-object p1, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sput-object p2, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ButtonLightController$2;

    sget-object v3, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/android/server/power/ButtonLightController$2;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sput-boolean v5, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    sput-boolean v5, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/power/ButtonLightController;->sLightSensorButtonBrightness:I

    invoke-static {p0}, Lcom/android/server/power/ButtonLightController;->updateButtonLightTimeout(Landroid/content/Context;)V

    return-void
.end method

.method static setButtonLightTimeout()V
    .registers 6

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_1b

    sput-boolean v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v1, Lcom/android/server/power/ButtonLightController;->sLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    :cond_1b
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    if-lez v0, :cond_35

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method

.method public static setScreenOn(Z)V
    .registers 2

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-ne v0, p0, :cond_5

    return-void

    :cond_5
    sput-boolean p0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    goto :goto_c
.end method

.method static turnOffButtonLight(I)V
    .registers 2

    if-nez p0, :cond_b

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    :cond_b
    return-void
.end method

.method static updateButtonLightState(ZZI)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_17

    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    if-eqz p2, :cond_1b

    if-eqz p1, :cond_16

    :cond_1b
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-eqz v0, :cond_16

    sput-boolean v1, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    goto :goto_16
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_buttons_timeout"

    const/16 v3, 0x1388

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    if-eq v0, v1, :cond_17

    sput v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    :cond_17
    return-void
.end method
