.class Lcom/miui/server/BackupManagerService$DeathLinker;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathLinker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$DeathLinker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$DeathLinker;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-wrap2(Lcom/miui/server/BackupManagerService;)V

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/miui/server/BackupManagerService;->-set2(Lcom/miui/server/BackupManagerService;I)I

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get5(Lcom/miui/server/BackupManagerService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get4(Lcom/miui/server/BackupManagerService;)Lcom/miui/server/BackupManagerService$DeathLinker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/server/BackupManagerService;->-set1(Lcom/miui/server/BackupManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_21
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-wrap0(Lcom/miui/server/BackupManagerService;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method
