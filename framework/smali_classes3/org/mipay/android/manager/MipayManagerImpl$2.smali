.class final Lorg/mipay/android/manager/MipayManagerImpl$2;
.super Ljava/lang/Object;
.source "MipayManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mipay/android/manager/MipayManagerImpl;
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

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-static {p2}, Lorg/mipay/android/manager/MipayManagerImpl;->-set0(Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_24
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get4()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get3()Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get1()Ljava/lang/String;

    move-result-object v1

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

    goto :goto_30
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get2()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "re-bind the service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-wrap0()V

    :cond_34
    return-void
.end method
