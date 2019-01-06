.class Lcom/miui/server/BackupManagerService$5;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;

.field final synthetic val$defaultIme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    iput-object p2, p0, Lcom/miui/server/BackupManagerService$5;->val$defaultIme:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get1(Lcom/miui/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$5;->val$defaultIme:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
