.class public Lcom/miui/whetstone/CloudControlInfo;
.super Ljava/lang/Object;
.source "CloudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/CloudControlInfo$1;
    }
.end annotation


# static fields
.field public static final CONFIG_MASK_APPEND_TOKEN_TO_URL:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final HTTP_MASK_CLASS:I = 0x2

.field private static final HTTP_MASK_CONFIG:I = 0x200

.field private static final HTTP_MASK_HTTP_METHOD:I = 0x10

.field private static final HTTP_MASK_INTENT_WITH_RESPONSE:I = 0x100

.field private static final HTTP_MASK_INTERVAL_AT_MIN:I = 0x40

.field private static final HTTP_MASK_PACKAGE:I = 0x1

.field private static final HTTP_MASK_PARAMS:I = 0x8

.field private static final HTTP_MASK_TIMEOUT:I = 0x80

.field private static final HTTP_MASK_TRIGGER_DELAY_AT_MIN:I = 0x20

.field private static final HTTP_MASK_URL:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CloudControlInfo"


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mConfig:Ljava/lang/String;

.field public mHttpMethod:Ljava/lang/String;

.field public mIntervalAtMin:I

.field public mIsIntentWithResponse:Z

.field public mParams:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mTimeout:I

.field public mTriggerDelayAtMin:I

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/whetstone/CloudControlInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/CloudControlInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Size of HttpRequest parcel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/CloudControlInfo;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    :cond_2d
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    :cond_37
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    :cond_41
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    :cond_4b
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_55

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    :cond_55
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    :cond_5f
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_69

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    :cond_69
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_73

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    :cond_73
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_80

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v1, 0x1

    :cond_7e
    iput-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    :cond_80
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    :cond_8a
    return-void
.end method

.method public constructor <init>(Lcom/miui/whetstone/CloudControlInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/CloudControlInfo;->copyFrom(Lcom/miui/whetstone/CloudControlInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/miui/whetstone/CloudControlInfo;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p10}, Lcom/miui/whetstone/CloudControlInfo;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-void
.end method

.method private buildFlagValue()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x4

    :cond_12
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v1, :cond_18

    or-int/lit8 v0, v0, 0x8

    :cond_18
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    if-eqz v1, :cond_1e

    or-int/lit8 v0, v0, 0x10

    :cond_1e
    or-int/lit8 v0, v0, 0x20

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x80

    or-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    if-eqz v1, :cond_2c

    or-int/lit16 v0, v0, 0x200

    :cond_2c
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "CloudControlInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/miui/whetstone/CloudControlInfo;)V
    .registers 3

    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iget v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iput v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iget-boolean v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iput-boolean v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iget-object v0, p1, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/miui/whetstone/CloudControlInfo;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    if-nez p1, :cond_a

    return v3

    :catch_8
    move-exception v1

    return v3

    :cond_a
    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iget v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    if-ne v4, v5, :cond_5c

    iget v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iget v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    if-ne v4, v5, :cond_5c

    iget v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iget v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    if-ne v4, v5, :cond_5c

    iget-boolean v4, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iget-boolean v5, v2, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    if-ne v4, v5, :cond_5c

    iget-object v3, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_5c
    return v3
.end method

.method public getComponentToShortString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    iput p6, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    iput p7, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    iput p8, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    iput-boolean p9, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    iput-object p10, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    return-void
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CloudControlInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-direct {p0}, Lcom/miui/whetstone/CloudControlInfo;->buildFlagValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_19
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_22
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mParams:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2b
    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mHttpMethod:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_34
    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTriggerDelayAtMin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIntervalAtMin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mTimeout:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mIsIntentWithResponse:Z

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    :goto_48
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/miui/whetstone/CloudControlInfo;->mConfig:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_55
    return-void

    :cond_56
    const/4 v1, 0x0

    goto :goto_48
.end method
