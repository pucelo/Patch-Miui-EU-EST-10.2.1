.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private includeTxPower:Z

.field private interval:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    const v0, 0xffef

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .registers 5

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    return-object v0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .registers 4

    const/16 v0, 0x50

    if-lt p1, v0, :cond_9

    const v0, 0xffef

    if-le p1, v0, :cond_12

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid interval (must be 80-65519)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    return-object p0
.end method
