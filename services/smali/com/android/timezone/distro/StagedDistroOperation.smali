.class public Lcom/android/timezone/distro/StagedDistroOperation;
.super Ljava/lang/Object;
.source "StagedDistroOperation.java"


# static fields
.field private static final UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;


# instance fields
.field public final distroVersion:Lcom/android/timezone/distro/DistroVersion;

.field public final isUninstall:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    sput-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-void
.end method

.method private constructor <init>(ZLcom/android/timezone/distro/DistroVersion;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    iput-object p2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    return-void
.end method

.method public static install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 3

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "distroVersion==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    return-object v0
.end method

.method public static uninstall()Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 1

    sget-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-object v0
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

    invoke-virtual {p0}, Lcom/android/timezone/distro/StagedDistroOperation;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/timezone/distro/StagedDistroOperation;

    iget-boolean v3, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    iget-boolean v4, v0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget-object v3, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v3, :cond_29

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    iget-object v2, v0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v1, v2}, Lcom/android/timezone/distro/DistroVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_28
    :goto_28
    return v1

    :cond_29
    iget-object v3, v0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v3, :cond_28

    move v1, v2

    goto :goto_28
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :goto_5
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v1}, Lcom/android/timezone/distro/DistroVersion;->hashCode()I

    move-result v1

    :goto_11
    add-int v0, v2, v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StagedDistroOperation{isUninstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", distroVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
