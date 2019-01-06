.class public interface abstract Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;,
        Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.tetheroffload.control@1.0::IOffloadControl"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .registers 8

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return-object v6

    :cond_4
    const-string/jumbo v5, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_14

    instance-of v5, v3, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v5, :cond_14

    check-cast v3, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    return-object v3

    :cond_14
    new-instance v4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;

    invoke-direct {v4, p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_19
    invoke-interface {v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_33} :catch_37

    move-result v5

    if-eqz v5, :cond_21

    return-object v4

    :catch_37
    move-exception v2

    :cond_38
    return-object v6
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    goto :goto_3
.end method

.method public static getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
