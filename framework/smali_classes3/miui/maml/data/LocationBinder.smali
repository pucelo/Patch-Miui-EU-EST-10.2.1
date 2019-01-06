.class public Lmiui/maml/data/LocationBinder;
.super Lmiui/maml/data/VariableBinder;
.source "LocationBinder.java"


# static fields
.field private static final DEFAULT_MIN_DISTANCE:F = 10.0f

.field private static final DEFAULT_MIN_TIME:J = 0x7530L

.field private static final DEFAULT_PROVIDER_TYPE:I = 0x0

.field private static final GPS:I = 0x2

.field private static final NETWORK:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "LocationBinder"

.field private static sLocationManager:Landroid/location/LocationManager;


# instance fields
.field private mEnable:Z

.field private mEnableExp:Lmiui/maml/data/Expression;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationProvider:Ljava/lang/String;

.field private mMinDistance:F

.field private mMinTime:J

.field private mProviderType:I

.field private mRegistered:Z


# direct methods
.method static synthetic -wrap0(Lmiui/maml/data/LocationBinder;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v4, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    const-string/jumbo v1, "time"

    const-wide/16 v2, 0x7530

    invoke-static {p1, v1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/LocationBinder;->mMinTime:J

    const-string/jumbo v1, "distance"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/data/LocationBinder;->mMinDistance:F

    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "enable"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lmiui/maml/data/LocationBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_50

    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    :cond_50
    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5c

    invoke-direct {p0, v4}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void

    :cond_5c
    iget v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_77

    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "gps"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    :cond_6f
    :goto_6f
    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    if-nez v1, :cond_a8

    invoke-direct {p0, v4}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void

    :cond_77
    iget v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    if-ne v1, v5, :cond_8a

    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "network"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_6f

    :cond_8a
    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    const-string/jumbo v1, "network"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_6f

    :cond_99
    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "gps"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_6f

    :cond_a8
    new-instance v1, Lmiui/maml/data/LocationBinder$1;

    invoke-direct {v1, p0}, Lmiui/maml/data/LocationBinder$1;-><init>(Lmiui/maml/data/LocationBinder;)V

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method private registerListener()V
    .registers 7

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mEnable:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    iget-object v0, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    sget-object v0, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/LocationBinder;->mMinTime:J

    iget v4, p0, Lmiui/maml/data/LocationBinder;->mMinDistance:F

    iget-object v5, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    return-void
.end method

.method private unregisterListener()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_53

    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    :cond_53
    iget-object v4, p0, Lmiui/maml/data/LocationBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder$Variable;

    move-object v3, v1

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_59

    :cond_6a
    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->onUpdateComplete()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->unregisterListener()V

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .registers 7

    const/4 v0, 0x1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1a

    :cond_14
    :goto_14
    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mEnable:Z

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->registerListener()V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/VariableBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/LocationBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->registerListener()V

    return-void
.end method
