.class Lcom/android/keyguard/KeyguardClockContainer$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/keyguard/KeyguardClockContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockContainer$2;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$2;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardClockContainer;->-set0(Lcom/android/keyguard/KeyguardClockContainer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$2;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockContainer;->-get2(Lcom/android/keyguard/KeyguardClockContainer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardClockContainer$2$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockContainer$2$1;-><init>(Lcom/android/keyguard/KeyguardClockContainer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockContainer$2;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockContainer;->-get2(Lcom/android/keyguard/KeyguardClockContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockContainer$2;->this$0:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardClockContainer;->-get4(Lcom/android/keyguard/KeyguardClockContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
