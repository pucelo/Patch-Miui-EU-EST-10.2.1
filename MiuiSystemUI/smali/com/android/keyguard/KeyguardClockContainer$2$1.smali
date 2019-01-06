.class Lcom/android/keyguard/KeyguardClockContainer$2$1;
.super Ljava/lang/Object;
.source "KeyguardClockContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardClockContainer$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardClockContainer$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockContainer$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer$2$1;->this$1:Lcom/android/keyguard/KeyguardClockContainer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$2$1;->this$1:Lcom/android/keyguard/KeyguardClockContainer$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockContainer$2;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->updateKeyguardClock()V

    return-void
.end method
