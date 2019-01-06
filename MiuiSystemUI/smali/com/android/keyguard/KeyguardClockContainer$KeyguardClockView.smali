.class public interface abstract Lcom/android/keyguard/KeyguardClockContainer$KeyguardClockView;
.super Ljava/lang/Object;
.source "KeyguardClockContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyguardClockView"
.end annotation


# virtual methods
.method public abstract getClockHeight()I
.end method

.method public abstract getClockVisibleHeight()F
.end method

.method public abstract setClockAlpha(F)V
.end method

.method public abstract setDarkMode(Z)V
.end method

.method public abstract updateClockView(ZZ)V
.end method

.method public abstract updateResidentTimeZone(Ljava/lang/String;)V
.end method

.method public abstract updateTime()V
.end method

.method public abstract updateTimeAndBatteryInfo()V
.end method

.method public abstract updateTimeZone(Ljava/lang/String;)V
.end method
