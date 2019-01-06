.class Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallAppParam"
.end annotation


# instance fields
.field private msg:Landroid/os/Message;

.field private refH:Ljava/lang/ref/WeakReference;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->msg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Handler;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->refH:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->msg:Landroid/os/Message;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->refH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method
