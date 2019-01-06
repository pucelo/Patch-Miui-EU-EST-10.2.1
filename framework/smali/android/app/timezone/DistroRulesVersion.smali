.class public final Landroid/app/timezone/DistroRulesVersion;
.super Ljava/lang/Object;
.source "DistroRulesVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/DistroRulesVersion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/timezone/DistroRulesVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRevision:I

.field private final mRulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/timezone/DistroRulesVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroRulesVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroRulesVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rulesVersion"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    const-string/jumbo v0, "revision"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/app/timezone/DistroRulesVersion;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    iget v2, v0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    if-eq v1, v2, :cond_1c

    return v3

    :cond_1c
    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getRevision()I
    .registers 2

    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    return v0
.end method

.method public getRulesVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    add-int v0, v1, v2

    return v0
.end method

.method public isOlderThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_d

    return v1

    :cond_d
    if-lez v0, :cond_10

    return v2

    :cond_10
    iget v3, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    iget v4, p1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    if-ge v3, v4, :cond_17

    :goto_16
    return v1

    :cond_17
    move v1, v2

    goto :goto_16
.end method

.method public toDumpString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistroRulesVersion{mRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRevision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
