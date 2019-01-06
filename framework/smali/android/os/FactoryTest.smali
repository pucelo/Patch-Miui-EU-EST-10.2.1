.class public final Landroid/os/FactoryTest;
.super Ljava/lang/Object;
.source "FactoryTest.java"


# static fields
.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMode()I
    .registers 1

    sget v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    return v0
.end method

.method public static isLongPressOnPowerOffEnabled()Z
    .registers 2

    const/4 v0, 0x0

    const-string/jumbo v1, "factory.long_press_power_off"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method
