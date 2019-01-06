.class final synthetic Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_5729(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(JJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;->$m$0(JJ)V

    return-void
.end method
