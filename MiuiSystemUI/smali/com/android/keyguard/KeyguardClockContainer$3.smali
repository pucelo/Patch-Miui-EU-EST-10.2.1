.class Lcom/android/keyguard/KeyguardClockContainer$3;
.super Landroid/database/ContentObserver;
.source "KeyguardClockContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardClockContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockContainer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer$3;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer$3;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockContainer$3;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardClockContainer;->-get1(Lcom/android/keyguard/KeyguardClockContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_dual_clock"

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockContainer$3;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardClockContainer;->-get3(Lcom/android/keyguard/KeyguardClockContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardClockContainer;->-set1(Lcom/android/keyguard/KeyguardClockContainer;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$3;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->updateKeyguardClock()V

    return-void
.end method
