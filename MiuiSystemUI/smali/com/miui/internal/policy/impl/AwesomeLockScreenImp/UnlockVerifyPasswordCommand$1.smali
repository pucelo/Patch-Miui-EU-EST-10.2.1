.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;
.super Landroid/os/AsyncTask;
.source "UnlockVerifyPasswordCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    iput p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->val$delay:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->-wrap0(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->-get0(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/data/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->val$delay:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlockVerify(Ljava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->-get1(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/CommandTriggers;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->-get1(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/CommandTriggers;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "success"

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "fail"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
