.class public interface abstract Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onConditionsChanged([Landroid/service/notification/Condition;)V
.end method

.method public abstract onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
.end method

.method public abstract onEffectsSupressorChanged()V
.end method

.method public abstract onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
.end method

.method public abstract onNextAlarmChanged()V
.end method

.method public abstract onZenAvailableChanged(Z)V
.end method

.method public abstract onZenChanged(I)V
.end method
