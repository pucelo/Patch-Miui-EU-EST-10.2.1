.class public abstract Lcom/android/internal/os/PowerCalculator;
.super Ljava/lang/Object;
.source "PowerCalculator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .registers 8

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
