.class public Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbEtwsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mActivatePopup:Z

.field private final mEmergencyUserAlert:Z

.field private final mPrimary:Z

.field private final mWarningSecurityInformation:[B

.field private final mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZ[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    :goto_23
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    return-void

    :cond_2c
    move v0, v2

    goto :goto_12

    :cond_2e
    move v0, v2

    goto :goto_1b

    :cond_30
    move v1, v2

    goto :goto_23
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_d

    instance-of v3, p1, Landroid/telephony/SmsCbEtwsInfo;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    :cond_d
    return v2

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/telephony/SmsCbEtwsInfo;

    iget v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    iget v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    if-ne v3, v4, :cond_26

    iget-boolean v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    iget-boolean v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-ne v3, v4, :cond_26

    iget-boolean v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    iget-boolean v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-ne v3, v4, :cond_24

    :goto_23
    return v1

    :cond_24
    move v1, v2

    goto :goto_23

    :cond_26
    move v1, v2

    goto :goto_23
.end method

.method public getPrimaryNotificationSignature()[B
    .registers 4

    const/4 v1, 0x0

    const/16 v2, 0x32

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    if-ge v0, v2, :cond_d

    :cond_c
    return-object v1

    :cond_d
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryNotificationTimestamp()J
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v9, :cond_c

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v9, v9

    const/4 v10, 0x7

    if-ge v9, v10, :cond_f

    :cond_c
    const-wide/16 v10, 0x0

    return-wide v10

    :cond_f
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    aget-byte v9, v9, v11

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    aget-byte v9, v9, v12

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x4

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x6

    aget-byte v7, v9, v10

    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_78

    :goto_53
    new-instance v5, Landroid/text/format/Time;

    const-string/jumbo v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    add-int/lit16 v9, v8, 0x7d0

    iput v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    iput v1, v5, Landroid/text/format/Time;->hour:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v4, v5, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    mul-int/lit8 v9, v6, 0xf

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v12, v9

    sub-long/2addr v10, v12

    return-wide v10

    :cond_78
    neg-int v6, v6

    goto :goto_53
.end method

.method public getWarningType()I
    .registers 2

    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    mul-int/lit8 v0, v1, 0x4

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-eqz v1, :cond_17

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x7

    :goto_c
    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-eqz v1, :cond_1c

    mul-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xf

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x5

    goto :goto_c

    :cond_1c
    mul-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0xd

    goto :goto_15
.end method

.method public isEmergencyUserAlert()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    return v0
.end method

.method public isPopupAlert()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    return v0
.end method

.method public isPrimary()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbEtwsInfo{warningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activatePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-eqz v0, :cond_24

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    if-eqz v0, :cond_28

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_24
    move v0, v2

    goto :goto_c

    :cond_26
    move v0, v2

    goto :goto_14

    :cond_28
    move v1, v2

    goto :goto_1b
.end method
