.class public final Landroid/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/util/Size;->mWidth:I

    iput p2, p0, Landroid/util/Size;->mHeight:I

    return-void
.end method

.method private static invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Size: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v2, "string must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_14

    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_14
    if-gez v1, :cond_1b

    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    :cond_1b
    :try_start_1b
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_33} :catch_34

    return-object v2

    :catch_34
    move-exception v0

    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return v2

    :cond_5
    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    instance-of v3, p1, Landroid/util/Size;

    if-eqz v3, :cond_1e

    move-object v0, p1

    check-cast v0, Landroid/util/Size;

    iget v3, p0, Landroid/util/Size;->mWidth:I

    iget v4, v0, Landroid/util/Size;->mWidth:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Landroid/util/Size;->mHeight:I

    iget v4, v0, Landroid/util/Size;->mHeight:I

    if-ne v3, v4, :cond_1c

    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b

    :cond_1e
    return v2
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/util/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/util/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/util/Size;->mHeight:I

    iget v1, p0, Landroid/util/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/util/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
