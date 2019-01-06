.class Lcom/android/internal/util/FileRotator$FileInfo;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FileRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public endMillis:J

.field public final prefix:Ljava/lang/String;

.field public startMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2c

    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isActive()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public parse(Ljava/lang/String;)Z
    .registers 12

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    iput-wide v8, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v1, v4, :cond_19

    if-ne v0, v4, :cond_1a

    :cond_19
    return v6

    :cond_1a
    iget-object v3, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    return v6

    :cond_27
    add-int/lit8 v3, v1, 0x1

    :try_start_29
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v3, v7, :cond_42

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    :goto_41
    return v7

    :cond_42
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_4e} :catch_4f

    goto :goto_41

    :catch_4f
    move-exception v2

    return v6
.end method
