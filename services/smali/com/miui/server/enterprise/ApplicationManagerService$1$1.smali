.class Lcom/miui/server/enterprise/ApplicationManagerService$1$1;
.super Ljava/lang/Object;
.source "ApplicationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/ApplicationManagerService$1;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

.field final synthetic val$basePackageName:Ljava/lang/String;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/ApplicationManagerService$1;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .registers 5

    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iput-object p2, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$basePackageName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$userId:I

    iput-object p4, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_13

    :try_start_4
    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iget-object v4, v4, Lcom/miui/server/enterprise/ApplicationManagerService$1;->this$0:Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-static {v4}, Lcom/miui/server/enterprise/ApplicationManagerService;->-get0(Lcom/miui/server/enterprise/ApplicationManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$basePackageName:Ljava/lang/String;

    iget v6, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_13} :catch_35

    :cond_13
    :try_start_13
    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    const-string/jumbo v4, "Enterprise-App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Send pending intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_13 .. :try_end_34} :catch_63

    :goto_34
    return-void

    :catch_35
    move-exception v1

    const-string/jumbo v4, "Enterprise-App"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$basePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is still frozen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    :try_start_5b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_61

    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_61
    move-exception v2

    goto :goto_5e

    :catch_63
    move-exception v0

    const-string/jumbo v4, "Enterprise-App"

    const-string/jumbo v5, "Failed to send pending intent"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method
