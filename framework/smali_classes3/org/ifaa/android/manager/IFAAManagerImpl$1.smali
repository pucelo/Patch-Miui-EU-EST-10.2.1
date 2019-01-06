.class final Lorg/ifaa/android/manager/IFAAManagerImpl$1;
.super Ljava/lang/Object;
.source "IFAAManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/IFAAManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-get2()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "IfaaManagerImpl"

    const-string/jumbo v1, "binderDied, unlink the service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-get2()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-get1()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
