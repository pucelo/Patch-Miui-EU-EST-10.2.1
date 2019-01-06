.class public Landroid/os/statistics/BinderSuperviser;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$BinderCallFields;,
        Landroid/os/statistics/BinderSuperviser$BinderStarvation;,
        Landroid/os/statistics/BinderSuperviser$BinderWrapper;,
        Landroid/os/statistics/BinderSuperviser$SingleBinderCall;,
        Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/os/statistics/BinderSuperviser;->getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    instance-of v2, p0, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    if-eqz v2, :cond_11

    check-cast p0, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$BinderWrapper;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_1c

    move-result-object v1

    :cond_b
    :goto_b
    if-nez v1, :cond_10

    const-string/jumbo v1, ""

    :cond_10
    return-object v1

    :cond_11
    :try_start_11
    instance-of v2, p0, Landroid/os/IBinder;

    if-eqz v2, :cond_b

    check-cast p0, Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1c

    move-result-object v1

    goto :goto_b

    :catch_1c
    move-exception v0

    goto :goto_b
.end method
