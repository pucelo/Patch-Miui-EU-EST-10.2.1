.class Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
.super Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteConfirmObserver"
.end annotation


# instance fields
.field delete:Z

.field finished:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
