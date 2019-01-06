.class Landroid/accounts/AccountManager$AmsTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$AmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$AmsTask;


# direct methods
.method private constructor <init>(Landroid/accounts/AccountManager$AmsTask;)V
    .registers 2

    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$AmsTask$Response;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x64

    if-ne p1, v0, :cond_e

    :cond_7
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    return-void

    :cond_e
    const/16 v0, 0x65

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-wrap0(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/accounts/AccountManager$AmsTask;->-wrap0(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 6

    if-nez p1, :cond_a

    const-string/jumbo v2, "null bundle returned"

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Landroid/accounts/AccountManager$AmsTask$Response;->onError(ILjava/lang/String;)V

    return-void

    :cond_a
    const-string/jumbo v2, "intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v2, v2, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2a

    invoke-static {v1}, Lmiui/content/pm/ExtraPackageManager;->handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-void

    :cond_22
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    iget-object v2, v2, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_29
    return-void

    :cond_2a
    const-string/jumbo v2, "retry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :try_start_33
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v2}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_29

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_3f
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask$Response;->this$1:Landroid/accounts/AccountManager$AmsTask;

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    goto :goto_29
.end method
