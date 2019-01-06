.class public Landroid/content/pm/MacAuthenticatedInputStream;
.super Ljava/io/FilterInputStream;
.source "MacAuthenticatedInputStream.java"


# instance fields
.field private final mMac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public isTagEqual([B)Z
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    if-eqz p1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    return v3

    :cond_c
    array-length v4, p1

    array-length v5, v0

    if-ne v4, v5, :cond_b

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_12
    array-length v4, p1

    if-ge v1, v4, :cond_1e

    aget-byte v4, p1, v1

    aget-byte v5, v0, v1

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1e
    if-nez v2, :cond_21

    const/4 v3, 0x1

    :cond_21
    return v3
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update(B)V

    :cond_c
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_b

    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Mac;->update([BII)V

    :cond_b
    return v0
.end method