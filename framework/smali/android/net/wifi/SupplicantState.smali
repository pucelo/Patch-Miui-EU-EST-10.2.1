.class public final enum Landroid/net/wifi/SupplicantState;
.super Ljava/lang/Enum;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantState$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/SupplicantState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/SupplicantState;

.field private static final synthetic -android-net-wifi-SupplicantStateSwitchesValues:[I

.field public static final enum ASSOCIATED:Landroid/net/wifi/SupplicantState;

.field public static final enum ASSOCIATING:Landroid/net/wifi/SupplicantState;

.field public static final enum AUTHENTICATING:Landroid/net/wifi/SupplicantState;

.field public static final enum COMPLETED:Landroid/net/wifi/SupplicantState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/wifi/SupplicantState;

.field public static final enum DORMANT:Landroid/net/wifi/SupplicantState;

.field public static final enum FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum INACTIVE:Landroid/net/wifi/SupplicantState;

.field public static final enum INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

.field public static final enum INVALID:Landroid/net/wifi/SupplicantState;

.field public static final enum SCANNING:Landroid/net/wifi/SupplicantState;

.field public static final enum UNINITIALIZED:Landroid/net/wifi/SupplicantState;


# direct methods
.method private static synthetic -getandroid-net-wifi-SupplicantStateSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/net/wifi/SupplicantState;->-android-net-wifi-SupplicantStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/wifi/SupplicantState;->-android-net-wifi-SupplicantStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_a5

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_a2

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_a0

    :goto_29
    :try_start_29
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_9e

    :goto_32
    :try_start_32
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_9c

    :goto_3b
    :try_start_3b
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_9a

    :goto_44
    :try_start_44
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_98

    :goto_4d
    :try_start_4d
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_96

    :goto_57
    :try_start_57
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_94

    :goto_61
    :try_start_61
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_92

    :goto_6b
    :try_start_6b
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_90

    :goto_75
    :try_start_75
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_8e

    :goto_7f
    :try_start_7f
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_8c

    :goto_89
    sput-object v0, Landroid/net/wifi/SupplicantState;->-android-net-wifi-SupplicantStateSwitchesValues:[I

    return-object v0

    :catch_8c
    move-exception v1

    goto :goto_89

    :catch_8e
    move-exception v1

    goto :goto_7f

    :catch_90
    move-exception v1

    goto :goto_75

    :catch_92
    move-exception v1

    goto :goto_6b

    :catch_94
    move-exception v1

    goto :goto_61

    :catch_96
    move-exception v1

    goto :goto_57

    :catch_98
    move-exception v1

    goto :goto_4d

    :catch_9a
    move-exception v1

    goto :goto_44

    :catch_9c
    move-exception v1

    goto :goto_3b

    :catch_9e
    move-exception v1

    goto :goto_32

    :catch_a0
    move-exception v1

    goto :goto_29

    :catch_a2
    move-exception v1

    goto/16 :goto_20

    :catch_a5
    move-exception v1

    goto/16 :goto_17
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "INTERFACE_DISABLED"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "INACTIVE"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "SCANNING"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "ASSOCIATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "ASSOCIATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "FOUR_WAY_HANDSHAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "GROUP_HANDSHAKE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "COMPLETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "DORMANT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "UNINITIALIZED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v1, "INVALID"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    const/16 v0, 0xd

    new-array v0, v0, [Landroid/net/wifi/SupplicantState;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v7

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    new-instance v0, Landroid/net/wifi/SupplicantState$1;

    invoke-direct {v0}, Landroid/net/wifi/SupplicantState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isConnecting(Landroid/net/wifi/SupplicantState;)Z
    .registers 3

    invoke-static {}, Landroid/net/wifi/SupplicantState;->-getandroid-net-wifi-SupplicantStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    const/4 v0, 0x1

    return v0

    :pswitch_18
    const/4 v0, 0x0

    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public static isDriverActive(Landroid/net/wifi/SupplicantState;)Z
    .registers 3

    invoke-static {}, Landroid/net/wifi/SupplicantState;->-getandroid-net-wifi-SupplicantStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    const/4 v0, 0x1

    return v0

    :pswitch_18
    const/4 v0, 0x0

    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method public static isHandshakeState(Landroid/net/wifi/SupplicantState;)Z
    .registers 3

    invoke-static {}, Landroid/net/wifi/SupplicantState;->-getandroid-net-wifi-SupplicantStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    const/4 v0, 0x1

    return v0

    :pswitch_18
    const/4 v0, 0x0

    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public static isValidState(Landroid/net/wifi/SupplicantState;)Z
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq p0, v1, :cond_a

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-eq p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .registers 2

    const-class v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/SupplicantState;
    .registers 1

    sget-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
