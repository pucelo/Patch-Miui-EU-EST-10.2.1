.class public interface abstract Lcom/android/systemui/doze/DozeHost$Callback;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAodAnimate(Z)V
.end method

.method public abstract onFodInAodStateChanged(Z)V
.end method

.method public abstract onPowerSaveChanged(Z)V
.end method
