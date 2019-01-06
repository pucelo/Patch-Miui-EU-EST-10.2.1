.class Lmiui/content/pm/PreloadedAppPolicy$1$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PreloadedAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/pm/PreloadedAppPolicy$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/content/pm/PreloadedAppPolicy$1;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$observer:Landroid/content/pm/IPackageInstallObserver;


# direct methods
.method constructor <init>(Lmiui/content/pm/PreloadedAppPolicy$1;Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/pm/IPackageInstallObserver;)V
    .registers 5

    iput-object p1, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->this$1:Lmiui/content/pm/PreloadedAppPolicy$1;

    iput-object p2, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$conn:Landroid/content/ServiceConnection;

    iput-object p4, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    :cond_10
    return-void
.end method
