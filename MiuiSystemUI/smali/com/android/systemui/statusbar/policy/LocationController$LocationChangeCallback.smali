.class public interface abstract Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationChangeCallback"
.end annotation


# virtual methods
.method public abstract onLocationActiveChanged(Z)V
.end method

.method public abstract onLocationSettingsChanged(Z)V
.end method

.method public abstract onLocationStatusChanged(Landroid/content/Intent;)V
.end method
