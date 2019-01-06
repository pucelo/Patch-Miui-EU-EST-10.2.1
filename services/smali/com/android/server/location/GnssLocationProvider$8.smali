.class Lcom/android/server/location/GnssLocationProvider$8;
.super Ljava/util/HashMap;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "SUPL_VER"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$0:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SUPL_MODE"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$1:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SUPL_ES"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$2:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LPP_PROFILE"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$3:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$4:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$5:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "GPS_LOCK"

    sget-object v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;->$INST$6:Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25326(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap14(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25403(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap13(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25475(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap12(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25549(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap11(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25645(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap9(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25761(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap8(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_25843(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap10(I)Z

    move-result v0

    return v0
.end method
