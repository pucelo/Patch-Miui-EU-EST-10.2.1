.class Lcom/miui/server/SecurityManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v1}, Lcom/miui/server/SecurityManagerService;->-get0(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/security/WakePathChecker;->onPackageAdded(Landroid/content/Context;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 2

    return-void
.end method
