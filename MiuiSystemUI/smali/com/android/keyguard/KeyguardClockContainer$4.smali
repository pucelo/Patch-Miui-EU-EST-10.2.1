.class Lcom/android/keyguard/KeyguardClockContainer$4;
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer$4;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$4;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer$4;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardClockContainer;->-get1(Lcom/android/keyguard/KeyguardClockContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "resident_timezone"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockContainer$4;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardClockContainer;->-get3(Lcom/android/keyguard/KeyguardClockContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardClockContainer;->-set2(Lcom/android/keyguard/KeyguardClockContainer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$4;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->updateKeyguardClock()V

    return-void
.end method
