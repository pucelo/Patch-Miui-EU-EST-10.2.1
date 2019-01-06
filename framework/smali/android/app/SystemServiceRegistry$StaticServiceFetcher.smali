.class abstract Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createService()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v1, :cond_b

    :try_start_5
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->createService()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_b
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_b} :catch_f
    .catchall {:try_start_5 .. :try_end_b} :catchall_14

    :cond_b
    :goto_b
    :try_start_b
    iget-object v1, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_14

    monitor-exit p0

    return-object v1

    :catch_f
    move-exception v0

    :try_start_10
    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_b

    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method
