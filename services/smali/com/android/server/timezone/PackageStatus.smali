.class final Lcom/android/server/timezone/PackageStatus;
.super Ljava/lang/Object;
.source "PackageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/PackageStatus$CheckStatus;
    }
.end annotation


# static fields
.field static final CHECK_COMPLETED_FAILURE:I = 0x3

.field static final CHECK_COMPLETED_SUCCESS:I = 0x2

.field static final CHECK_STARTED:I = 0x1


# instance fields
.field final mCheckStatus:I

.field final mVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_b

    const/4 v0, 0x3

    if-le p1, v0, :cond_25

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown checkStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-nez p2, :cond_30

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "versions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p2, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatus;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/server/timezone/PackageStatus;

    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    iget v2, v0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    if-eq v1, v2, :cond_1c

    return v3

    :cond_1c
    iget-object v1, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object v2, v0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageStatus{mCheckStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
