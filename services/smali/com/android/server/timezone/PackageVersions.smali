.class final Lcom/android/server/timezone/PackageVersions;
.super Ljava/lang/Object;
.source "PackageVersions.java"


# instance fields
.field final mDataAppVersion:I

.field final mUpdateAppVersion:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    iput p2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageVersions;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/server/timezone/PackageVersions;

    iget v3, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    iget v4, v0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget v3, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    iget v4, v0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    if-ne v3, v4, :cond_23

    :goto_22
    return v1

    :cond_23
    move v1, v2

    goto :goto_22
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageVersions{mUpdateAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDataAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
