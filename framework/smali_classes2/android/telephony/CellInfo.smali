.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field protected static final TYPE_CDMA:I = 0x2

.field protected static final TYPE_GSM:I = 0x1

.field protected static final TYPE_LTE:I = 0x3

.field protected static final TYPE_WCDMA:I = 0x4


# instance fields
.field private mRegistered:Z

.field private mTimeStamp:J

.field private mTimeStampType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_19

    :goto_a
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected constructor <init>(Landroid/telephony/CellInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget v0, p1, Landroid/telephony/CellInfo;->mTimeStampType:I

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method private static timeStampTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "antenna"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "modem"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "oem_ril"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "java_ril"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_5

    return v5

    :cond_5
    if-ne p0, p1, :cond_8

    return v4

    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfo;

    move-object v3, v0

    iget-boolean v6, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-boolean v7, v3, Landroid/telephony/CellInfo;->mRegistered:Z

    if-ne v6, v7, :cond_23

    iget-wide v6, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget-wide v8, v3, Landroid/telephony/CellInfo;->mTimeStamp:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_23

    iget v6, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    iget v7, v3, Landroid/telephony/CellInfo;->mTimeStampType:I
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1e} :catch_25

    if-ne v6, v7, :cond_21

    :goto_20
    return v4

    :cond_21
    move v4, v5

    goto :goto_20

    :cond_23
    move v4, v5

    goto :goto_20

    :catch_25
    move-exception v2

    return v5
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getTimeStampType()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    const/16 v0, 0x1f

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    :goto_7
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isRegistered()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public setRegistered(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 4

    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method public setTimeStampType(I)V
    .registers 4

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v0, 0x4

    if-le p1, v0, :cond_9

    :cond_6
    iput v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    :goto_8
    return-void

    :cond_9
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "mRegistered="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "YES"

    :goto_13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-static {v2}, Landroid/telephony/CellInfo;->timeStampTypeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " mTimeStampType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " mTimeStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v4, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3e
    const-string/jumbo v2, "NO"

    goto :goto_13
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .registers 6

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method
