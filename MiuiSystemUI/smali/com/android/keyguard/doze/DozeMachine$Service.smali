.class public interface abstract Lcom/android/keyguard/doze/DozeMachine$Service;
.super Ljava/lang/Object;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;
    }
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V
.end method

.method public abstract setDozeScreenBrightness(I)V
.end method

.method public abstract setDozeScreenState(I)V
.end method
