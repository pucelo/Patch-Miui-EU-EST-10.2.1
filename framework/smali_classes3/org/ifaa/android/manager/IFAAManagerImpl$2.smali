.class final Lorg/ifaa/android/manager/IFAAManagerImpl$2;
.super Ljava/lang/Object;
.source "IFAAManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    invoke-static {p2}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-set0(Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_3
    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-get2()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-get1()Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "IfaaManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "linkToDeath fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-get0()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "IfaaManagerImpl"

    const-string/jumbo v1, "re-bind the service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/ifaa/android/manager/IFAAManagerImpl;->-wrap0()V

    :cond_12
    return-void
.end method
