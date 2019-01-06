.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->readyForKeyguardDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "unblock screen on when screen turned on delayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unblockScreenOn()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setScreenTurnOnDelayed(Z)V

    return-void
.end method
