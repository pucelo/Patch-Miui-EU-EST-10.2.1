.class Lcom/miui/server/enterprise/ApplicationManagerService$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/ApplicationManagerService;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/ApplicationManagerService;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/ApplicationManagerService;ILandroid/app/PendingIntent;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->this$0:Lcom/miui/server/enterprise/ApplicationManagerService;

    iput p2, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$userId:I

    iput-object p3, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x1

    if-eq p2, v0, :cond_34

    const-string/jumbo v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to install package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", returnCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;

    iget v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$userId:I

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;-><init>(Lcom/miui/server/enterprise/ApplicationManagerService$1;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
