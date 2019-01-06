.class Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z

    iput p2, p0, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
