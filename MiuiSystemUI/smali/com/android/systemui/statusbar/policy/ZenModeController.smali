.class public interface abstract Lcom/android/systemui/statusbar/policy/ZenModeController;
.super Ljava/lang/Object;
.source "ZenModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController",
        "<",
        "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentUser()I
.end method

.method public abstract getZen()I
.end method
