.class Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;
.super Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParallelPackageParserCallback"
.end annotation


# instance fields
.field mOverlayPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method findStaticOverlayPackages()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsStaticOverlay:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    if-nez v2, :cond_2c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    :cond_2c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    goto :goto_11

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_35
    monitor-exit v3

    return-void
.end method

.method declared-synchronized getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_f

    if-nez v1, :cond_8

    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->getStaticOverlayPathsLocked(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_6

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
