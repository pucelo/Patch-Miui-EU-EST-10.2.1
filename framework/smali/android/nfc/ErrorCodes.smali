.class public Landroid/nfc/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final ERROR_BUFFER_TO_SMALL:I = -0xc

.field public static final ERROR_BUSY:I = -0x4

.field public static final ERROR_CANCELLED:I = -0x2

.field public static final ERROR_CONNECT:I = -0x5

.field public static final ERROR_DISCONNECT:I = -0x5

.field public static final ERROR_INSUFFICIENT_RESOURCES:I = -0x9

.field public static final ERROR_INVALID_PARAM:I = -0x8

.field public static final ERROR_IO:I = -0x1

.field public static final ERROR_NFC_ON:I = -0x10

.field public static final ERROR_NOT_INITIALIZED:I = -0x11

.field public static final ERROR_NOT_SUPPORTED:I = -0x15

.field public static final ERROR_NO_SE_CONNECTED:I = -0x14

.field public static final ERROR_READ:I = -0x6

.field public static final ERROR_SAP_USED:I = -0xd

.field public static final ERROR_SERVICE_NAME_USED:I = -0xe

.field public static final ERROR_SE_ALREADY_SELECTED:I = -0x12

.field public static final ERROR_SE_CONNECTED:I = -0x13

.field public static final ERROR_SOCKET_CREATION:I = -0xa

.field public static final ERROR_SOCKET_NOT_CONNECTED:I = -0xb

.field public static final ERROR_SOCKET_OPTIONS:I = -0xf

.field public static final ERROR_TIMEOUT:I = -0x3

.field public static final ERROR_WRITE:I = -0x7

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_60

    const-string/jumbo v0, "UNKNOWN ERROR"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "IO"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "CANCELLED"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "TIMEOUT"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "BUSY"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "CONNECT/DISCONNECT"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "READ"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "WRITE"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "INVALID_PARAM"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "SOCKET_CREATION"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "SOCKET_NOT_CONNECTED"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "BUFFER_TO_SMALL"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "SAP_USED"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "SERVICE_NAME_USED"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "SOCKET_OPTIONS"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "NFC_ON"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "NOT_INITIALIZED"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "SE_ALREADY_SELECTED"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "SE_CONNECTED"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "NO_SE_CONNECTED"

    return-object v0

    :pswitch_5b
    const-string/jumbo v0, "NOT_SUPPORTED"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch -0x15
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static isError(I)Z
    .registers 2

    const/4 v0, 0x0

    if-gez p0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v0
.end method
