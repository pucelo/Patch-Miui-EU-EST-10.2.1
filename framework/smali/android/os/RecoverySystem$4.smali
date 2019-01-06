.class final Landroid/os/RecoverySystem$4;
.super Landroid/content/BroadcastReceiver;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isWipeEuicc:Z


# direct methods
.method constructor <init>(ZLjava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-boolean p1, p0, Landroid/os/RecoverySystem$4;->val$isWipeEuicc:Z

    iput-object p2, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v1, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Landroid/os/RecoverySystem$4;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_5a

    const-string/jumbo v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v1, p0, Landroid/os/RecoverySystem$4;->val$isWipeEuicc:Z

    if-eqz v1, :cond_3f

    const-string/jumbo v1, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error wiping euicc data, Detailed code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    iget-object v1, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3e
    return-void

    :cond_3f
    const-string/jumbo v1, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error retaining euicc data, Detailed code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_5a
    iget-boolean v1, p0, Landroid/os/RecoverySystem$4;->val$isWipeEuicc:Z

    if-eqz v1, :cond_68

    const-string/jumbo v1, "RecoverySystem"

    const-string/jumbo v2, "Successfully wiped euicc data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_68
    const-string/jumbo v1, "RecoverySystem"

    const-string/jumbo v2, "Successfully retained euicc data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method
