.class Lcom/android/keyguard/MiuiKeyguardClock$4;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->-set1(Lcom/android/keyguard/MiuiKeyguardClock;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->-wrap1(Lcom/android/keyguard/MiuiKeyguardClock;)V

    return-void
.end method
