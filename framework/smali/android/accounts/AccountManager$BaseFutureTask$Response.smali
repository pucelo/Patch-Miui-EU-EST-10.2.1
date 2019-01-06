.class public Landroid/accounts/AccountManager$BaseFutureTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$BaseFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$BaseFutureTask;


# direct methods
.method protected constructor <init>(Landroid/accounts/AccountManager$BaseFutureTask;)V
    .registers 2

    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

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
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->cancel(Z)Z

    return-void

    :cond_e
    const/16 v0, 0x65

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->-wrap0(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->-wrap0(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 7

    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-virtual {v3, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    iget-object v3, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-static {v3, v2}, Landroid/accounts/AccountManager$BaseFutureTask;->-wrap1(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_e} :catch_18

    return-void

    :catch_f
    move-exception v1

    :goto_10
    const-string/jumbo v3, "no result in response"

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Landroid/accounts/AccountManager$BaseFutureTask$Response;->onError(ILjava/lang/String;)V

    return-void

    :catch_18
    move-exception v0

    goto :goto_10
.end method
