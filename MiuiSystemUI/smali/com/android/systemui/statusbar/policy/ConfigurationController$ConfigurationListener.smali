.class public interface abstract Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationListener"
.end annotation


# virtual methods
.method public abstract onConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method
