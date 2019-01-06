.class Lcom/android/server/oemlock/OemLockService$1;
.super Ljava/lang/Object;
.source "OemLockService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "no_factory_reset"

    aput-object v2, v1, v3

    invoke-static {p3, p2, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_28

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v1}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v1, v3}, Lcom/android/server/oemlock/OemLockService;->-wrap5(Lcom/android/server/oemlock/OemLockService;Z)V

    :cond_28
    return-void
.end method
