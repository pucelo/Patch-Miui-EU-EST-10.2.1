.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hideBootMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    :cond_26
    return-void
.end method
