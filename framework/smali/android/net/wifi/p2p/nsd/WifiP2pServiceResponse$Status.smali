.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final BAD_REQUEST:I = 0x3

.field public static final REQUESTED_INFORMATION_NOT_AVAILABLE:I = 0x2

.field public static final SERVICE_PROTOCOL_NOT_AVAILABLE:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "SERVICE_PROTOCOL_NOT_AVAILABLE"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "REQUESTED_INFORMATION_NOT_AVAILABLE"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "BAD_REQUEST"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
