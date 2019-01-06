.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider name contains illegal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .registers 6

    const/4 v2, 0x0

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    if-nez p1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    if-ge v0, v1, :cond_1d

    return v2

    :cond_1d
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    if-ge v0, v1, :cond_2c

    return v2

    :cond_2c
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_39

    return v2

    :cond_39
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_46

    return v2

    :cond_46
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    return v2

    :cond_53
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    if-eqz v0, :cond_5e

    return v2

    :cond_5e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getAccuracy()I
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 4

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method public requiresCell()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    return v0
.end method

.method public supportsAltitude()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    return v0
.end method
