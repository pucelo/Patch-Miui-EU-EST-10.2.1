.class Lcom/miui/server/SecurityManagerService$2;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$cb:Lmiui/security/ISecurityCallback;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$2;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$2;->val$cb:Lmiui/security/ISecurityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$2;->val$cb:Lmiui/security/ISecurityCallback;

    invoke-interface {v0}, Lmiui/security/ISecurityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$2;->this$0:Lcom/miui/server/SecurityManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/server/SecurityManagerService;->-set1(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)Lmiui/security/ISecurityCallback;

    const-string/jumbo v0, "SecurityManagerService"

    const-string/jumbo v1, "securitycenter died, reset handle to null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
