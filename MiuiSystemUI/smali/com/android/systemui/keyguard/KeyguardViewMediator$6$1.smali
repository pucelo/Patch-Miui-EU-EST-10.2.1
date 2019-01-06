.class Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

.field final synthetic val$resetLockScreen:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->val$resetLockScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->val$resetLockScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap27(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get24(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    goto :goto_0
.end method
