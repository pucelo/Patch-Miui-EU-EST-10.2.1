.class public Lcom/android/server/connectivity/tethering/IControlsTethering;
.super Ljava/lang/Object;
.source "IControlsTethering.java"


# static fields
.field public static final STATE_AVAILABLE:I = 0x1

.field public static final STATE_LOCAL_ONLY:I = 0x3

.field public static final STATE_TETHERED:I = 0x2

.field public static final STATE_UNAVAILABLE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "UNAVAILABLE"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "AVAILABLE"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "TETHERED"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "LOCAL_ONLY"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .registers 4

    return-void
.end method

.method public updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .registers 3

    return-void
.end method
