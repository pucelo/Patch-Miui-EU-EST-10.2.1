.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$1;,
        Landroid/location/GnssNavigationMessage$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "Unknown"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "ParityPassed"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "ParityRebuilt"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    sparse-switch v0, :sswitch_data_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "Unknown"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "GPS L1 C/A"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "GPS L2-CNAV"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "GPS L5-CNAV"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "GPS CNAV2"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "Glonass L1 C/A"

    return-object v0

    :sswitch_3b
    const-string/jumbo v0, "Beidou D1"

    return-object v0

    :sswitch_3f
    const-string/jumbo v0, "Beidou D2"

    return-object v0

    :sswitch_43
    const-string/jumbo v0, "Galileo I"

    return-object v0

    :sswitch_47
    const-string/jumbo v0, "Galileo F"

    return-object v0

    nop

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_23
        0x101 -> :sswitch_27
        0x102 -> :sswitch_2b
        0x103 -> :sswitch_2f
        0x104 -> :sswitch_33
        0x301 -> :sswitch_37
        0x501 -> :sswitch_3b
        0x502 -> :sswitch_3f
        0x601 -> :sswitch_43
        0x602 -> :sswitch_47
    .end sparse-switch
.end method

.method private initialize()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    sget-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public getSubmessageId()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public getSvid()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .registers 3

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setData([B)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-void
.end method

.method public setMessageId(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setSubmessageId(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return-void
.end method

.method public setSvid(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "   %-15s = %s\n"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "GnssNavigationMessage:\n"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Type"

    aput-object v7, v6, v4

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Svid"

    aput-object v7, v6, v4

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Status"

    aput-object v7, v6, v4

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "MessageId"

    aput-object v7, v6, v4

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "SubmessageId"

    aput-object v7, v6, v4

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "Data"

    aput-object v7, v6, v4

    const-string/jumbo v7, "{"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "        "

    iget-object v5, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v6, v5

    :goto_a3
    if-ge v4, v6, :cond_b3

    aget-byte v3, v5, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", "

    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_b3
    const-string/jumbo v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
