.class public Landroid/speech/tts/Voice;
.super Ljava/lang/Object;
.source "Voice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/Voice$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation
.end field

.field public static final LATENCY_HIGH:I = 0x190

.field public static final LATENCY_LOW:I = 0xc8

.field public static final LATENCY_NORMAL:I = 0x12c

.field public static final LATENCY_VERY_HIGH:I = 0x1f4

.field public static final LATENCY_VERY_LOW:I = 0x64

.field public static final QUALITY_HIGH:I = 0x190

.field public static final QUALITY_LOW:I = 0xc8

.field public static final QUALITY_NORMAL:I = 0x12c

.field public static final QUALITY_VERY_HIGH:I = 0x1f4

.field public static final QUALITY_VERY_LOW:I = 0x64


# instance fields
.field private final mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatency:I

.field private final mLocale:Ljava/util/Locale;

.field private final mName:Ljava/lang/String;

.field private final mQuality:I

.field private final mRequiresNetworkConnection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/speech/tts/Voice$1;

    invoke-direct {v0}, Landroid/speech/tts/Voice$1;-><init>()V

    sput-object v0, Landroid/speech/tts/Voice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_25
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/speech/tts/Voice;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/Voice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "IIZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    iput p3, p0, Landroid/speech/tts/Voice;->mQuality:I

    iput p4, p0, Landroid/speech/tts/Voice;->mLatency:I

    iput-boolean p5, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    iput-object p6, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Landroid/speech/tts/Voice;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/speech/tts/Voice;

    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-nez v1, :cond_1f

    iget-object v1, v0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-eqz v1, :cond_2a

    return v3

    :cond_1f
    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    iget-object v2, v0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    :cond_2a
    iget v1, p0, Landroid/speech/tts/Voice;->mLatency:I

    iget v2, v0, Landroid/speech/tts/Voice;->mLatency:I

    if-eq v1, v2, :cond_31

    return v3

    :cond_31
    iget-object v1, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-nez v1, :cond_3a

    iget-object v1, v0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_45

    return v3

    :cond_3a
    iget-object v1, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    iget-object v2, v0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v3

    :cond_45
    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-nez v1, :cond_4e

    iget-object v1, v0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-eqz v1, :cond_59

    return v3

    :cond_4e
    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v3

    :cond_59
    iget v1, p0, Landroid/speech/tts/Voice;->mQuality:I

    iget v2, v0, Landroid/speech/tts/Voice;->mQuality:I

    if-eq v1, v2, :cond_60

    return v3

    :cond_60
    iget-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    iget-boolean v2, v0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eq v1, v2, :cond_67

    return v3

    :cond_67
    return v4
.end method

.method public getFeatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public getLatency()I
    .registers 2

    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .registers 2

    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-nez v2, :cond_33

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/speech/tts/Voice;->mLatency:I

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-nez v2, :cond_3a

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-nez v4, :cond_41

    :goto_20
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/speech/tts/Voice;->mQuality:I

    add-int v1, v2, v3

    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eqz v2, :cond_48

    const/16 v2, 0x4cf

    :goto_30
    add-int v1, v3, v2

    return v1

    :cond_33
    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_3a
    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_41
    iget-object v3, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_20

    :cond_48
    const/16 v2, 0x4d5

    goto :goto_30
.end method

.method public isNetworkConnectionRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Voice[Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requiresNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", features: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_19
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_19
.end method
