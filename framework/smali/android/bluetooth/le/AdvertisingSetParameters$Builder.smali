.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connectable:Z

.field private includeTxPower:Z

.field private interval:I

.field private isAnonymous:Z

.field private isLegacy:Z

.field private primaryPhy:I

.field private scannable:Z

.field private secondaryPhy:I

.field private txPowerLevel:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    const/16 v0, 0xa0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    const/4 v0, -0x7

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .registers 12

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Legacy advertising can\'t be anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Legacy advertisement can\'t be connectable and non-scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Legacy advertising can\'t include TX power level in header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Advertising can\'t be both connectable and scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Advertising can\'t be both connectable and anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    iget-boolean v2, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    iget v6, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    iget v7, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    iget v8, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    iget v9, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters;)V

    return-object v0
.end method

.method public setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    return-object p0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/16 v0, 0xa0

    if-lt p1, v0, :cond_9

    const v0, 0xffffff

    if-le p1, v0, :cond_23

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    return-object p0
.end method

.method public setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    return-object p0
.end method

.method public setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad primaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    return-object p0
.end method

.method public setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    return-object p0
.end method

.method public setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad secondaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5

    const/16 v0, -0x7f

    if-lt p1, v0, :cond_7

    const/4 v0, 0x1

    if-le p1, v0, :cond_21

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown txPowerLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    return-object p0
.end method
