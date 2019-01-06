.class public Landroid/location/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Criteria$1;
    }
.end annotation


# static fields
.field public static final ACCURACY_COARSE:I = 0x2

.field public static final ACCURACY_FINE:I = 0x1

.field public static final ACCURACY_HIGH:I = 0x3

.field public static final ACCURACY_LOW:I = 0x1

.field public static final ACCURACY_MEDIUM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Criteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_REQUIREMENT:I = 0x0

.field public static final POWER_HIGH:I = 0x3

.field public static final POWER_LOW:I = 0x1

.field public static final POWER_MEDIUM:I = 0x2


# instance fields
.field private mAltitudeRequired:Z

.field private mBearingAccuracy:I

.field private mBearingRequired:Z

.field private mCostAllowed:Z

.field private mHorizontalAccuracy:I

.field private mPowerRequirement:I

.field private mSpeedAccuracy:I

.field private mSpeedRequired:Z

.field private mVerticalAccuracy:I


# direct methods
.method static synthetic -set0(Landroid/location/Criteria;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return p1
.end method

.method static synthetic -set1(Landroid/location/Criteria;I)I
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return p1
.end method

.method static synthetic -set2(Landroid/location/Criteria;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return p1
.end method

.method static synthetic -set3(Landroid/location/Criteria;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return p1
.end method

.method static synthetic -set4(Landroid/location/Criteria;I)I
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return p1
.end method

.method static synthetic -set5(Landroid/location/Criteria;I)I
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return p1
.end method

.method static synthetic -set6(Landroid/location/Criteria;I)I
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return p1
.end method

.method static synthetic -set7(Landroid/location/Criteria;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return p1
.end method

.method static synthetic -set8(Landroid/location/Criteria;I)I
    .registers 2

    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/Criteria$1;

    invoke-direct {v0}, Landroid/location/Criteria$1;-><init>()V

    sput-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    iget v0, p1, Landroid/location/Criteria;->mHorizontalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    iget v0, p1, Landroid/location/Criteria;->mVerticalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    iget v0, p1, Landroid/location/Criteria;->mSpeedAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    iget v0, p1, Landroid/location/Criteria;->mBearingAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    iget v0, p1, Landroid/location/Criteria;->mPowerRequirement:I

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    iget-boolean v0, p1, Landroid/location/Criteria;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    iget-boolean v0, p1, Landroid/location/Criteria;->mBearingRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    iget-boolean v0, p1, Landroid/location/Criteria;->mSpeedRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    iget-boolean v0, p1, Landroid/location/Criteria;->mCostAllowed:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return-void
.end method

.method private static accuracyToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string/jumbo v0, "???"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "---"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "HIGH"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "MEDIUM"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "LOW"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_13
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method private static powerToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string/jumbo v0, "???"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "NO_REQ"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "LOW"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "MEDIUM"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "HIGH"

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


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()I
    .registers 3

    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x2

    return v0
.end method

.method public getBearingAccuracy()I
    .registers 2

    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return v0
.end method

.method public getHorizontalAccuracy()I
    .registers 2

    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .registers 2

    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return v0
.end method

.method public getSpeedAccuracy()I
    .registers 2

    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return v0
.end method

.method public getVerticalAccuracy()I
    .registers 2

    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return v0
.end method

.method public isAltitudeRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return v0
.end method

.method public isBearingRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return v0
.end method

.method public isCostAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return v0
.end method

.method public isSpeedRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return v0
.end method

.method public setAccuracy(I)V
    .registers 5

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-ne p1, v1, :cond_26

    const/4 v0, 0x3

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    :goto_25
    return-void

    :cond_26
    iput v1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    goto :goto_25
.end method

.method public setAltitudeRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return-void
.end method

.method public setBearingAccuracy(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return-void
.end method

.method public setBearingRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return-void
.end method

.method public setCostAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return-void
.end method

.method public setHorizontalAccuracy(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return-void
.end method

.method public setPowerRequirement(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return-void
.end method

.method public setSpeedAccuracy(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return-void
.end method

.method public setSpeedRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return-void
.end method

.method public setVerticalAccuracy(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Criteria[power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-static {v2}, Landroid/location/Criteria;->powerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " acc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    invoke-static {v2}, Landroid/location/Criteria;->accuracyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    if-eqz v0, :cond_41

    :goto_37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3b
    move v0, v2

    goto :goto_20

    :cond_3d
    move v0, v2

    goto :goto_28

    :cond_3f
    move v0, v2

    goto :goto_30

    :cond_41
    move v1, v2

    goto :goto_37
.end method
