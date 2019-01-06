.class Lcom/miui/server/SplashScreenServiceDelegate$4;
.super Lcom/miui/server/ISplashPackageCheckListener$Stub;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap0(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap4(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V

    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_26

    :catch_41
    move-exception v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "updateSplashPackageCheckInfo exception"

    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public updateSplashPackageCheckInfoList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v4, "updateSplashPackageCheckInfoList"

    invoke-static {v3, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-get2(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    return-void

    :cond_1a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/SplashPackageCheckInfo;

    invoke-virtual {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$4;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1e

    :catch_2e
    move-exception v0

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v4, "updateSplashPackageCheckInfoList exception"

    invoke-static {v3, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    return-void
.end method
