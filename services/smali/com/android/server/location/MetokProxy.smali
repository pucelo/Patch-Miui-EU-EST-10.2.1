.class public Lcom/android/server/location/MetokProxy;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MetokProxy$1;
    }
.end annotation


# static fields
.field private static final CMD_CAN_TAKEOVER:Ljava/lang/String; = "metok_takeover"

.field private static final D:Z = true

.field private static final EXTRA_CLIENT:Ljava/lang/String; = "metok_client"

.field private static final EXTRA_MAGIC:Ljava/lang/String; = "metok_magic"

.field private static final EXTRA_PROVIDER:Ljava/lang/String; = "metok_provider"

.field private static final MAGIC_METOK:Ljava/lang/String; = "metok"

.field private static final METOK_LP_PACKAGE:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final METOK_PROVIDER:Ljava/lang/String; = "network"

.field private static final TAG:Ljava/lang/String; = "MetokProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFused:Lcom/android/server/location/LocationProviderInterface;

.field private mGps:Lcom/android/server/location/LocationProviderInterface;

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mNlp:Lcom/android/server/location/LocationProviderInterface;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mProviderToCalled:Ljava/lang/String;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/location/MetokWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/MetokProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    new-instance v0, Lcom/android/server/location/MetokProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/MetokProxy$1;-><init>(Lcom/android/server/location/MetokProxy;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "network"

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/location/MetokWatcher;

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/android/server/location/MetokWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    return-void
.end method

.method private bind()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;
    .registers 6

    new-instance v0, Lcom/android/server/location/MetokProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0}, Lcom/android/server/location/MetokProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string/jumbo v1, "MetokProxy"

    const-string/jumbo v2, "failed to bind metok"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    if-nez v1, :cond_6

    return-void

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_32

    :cond_1a
    :goto_1a
    iput-object v4, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    return-void

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_31} :catch_32

    goto :goto_1a

    :catch_32
    move-exception v0

    const-string/jumbo v1, "MetokProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "locaiton request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_32

    goto :goto_1a
.end method


# virtual methods
.method public canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return v5

    :cond_6
    const-string/jumbo v2, "passive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return v5

    :cond_10
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_15
    const-string/jumbo v2, "metok_magic"

    const-string/jumbo v3, "metok"

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v2, "metok_client"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v2, "metok_provider"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_4c

    const-string/jumbo v2, "metok_takeover"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/MetokProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_68

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const/4 v2, 0x1

    return v2

    :catch_4c
    move-exception v0

    const-string/jumbo v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create bundle error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_68
    return v5
.end method

.method public disable()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_e

    monitor-exit v3

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    :catchall_e
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_11
    :try_start_11
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v1

    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_37
    move-exception v0

    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v3, "REMOTE SERVICE"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v3, " name="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v3, " pkg="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v3, " version="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    if-nez v2, :cond_58

    const-string/jumbo v3, "service down (null)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_58
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_5b
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_62} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_63

    :goto_62
    return-void

    :catch_63
    move-exception v1

    const-string/jumbo v3, "service down (Exception)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    :catch_8b
    move-exception v0

    const-string/jumbo v3, "service down (RemoteException)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62
.end method

.method public enable()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_e

    monitor-exit v3

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    :catchall_e
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_11
    :try_start_11
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v1

    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_37
    move-exception v0

    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 9

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    if-nez v2, :cond_8

    return v6

    :cond_8
    :try_start_8
    invoke-interface {v2, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result v3

    return v3

    :catch_d
    move-exception v1

    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return v6

    :catch_2f
    move-exception v0

    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method public getStatusUpdateTime()J
    .registers 9

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    if-nez v2, :cond_9

    return-wide v6

    :cond_9
    :try_start_9
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v4

    return-wide v4

    :catch_e
    move-exception v1

    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-wide v6

    :catch_30
    move-exception v0

    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public isEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string/jumbo v1, "metok_magic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "MetokProxy"

    const-string/jumbo v2, "location from metok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1d
    return-object p1
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    if-nez v2, :cond_8

    return v6

    :cond_8
    :try_start_8
    invoke-interface {v2, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result v3

    return v3

    :catch_d
    move-exception v1

    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return v6

    :catch_2f
    move-exception v0

    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method public setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    return-void
.end method

.method public setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    return-void
.end method

.method public setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_12

    monitor-exit v5

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v3

    if-nez v3, :cond_15

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void

    :catchall_12
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_15
    const/4 v2, 0x0

    :try_start_16
    invoke-interface {v3, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_42
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1f

    :goto_19
    if-eqz v2, :cond_1e

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    :cond_1e
    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v4, "MetokProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v6}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    goto :goto_19

    :catch_42
    move-exception v0

    const-string/jumbo v4, "MetokProxy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    goto :goto_19
.end method

.method public updateStatus(Z)V
    .registers 3

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->enable()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-nez p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->disable()V

    goto :goto_b
.end method
