.class Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z

    if-ne p2, v0, :cond_e

    :goto_7
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->notifyAll()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    monitor-exit p0

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :catchall_10
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
