.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final mId:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    instance-of v2, p1, Landroid/media/AudioHandle;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/media/AudioHandle;

    iget v2, p0, Landroid/media/AudioHandle;->mId:I

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v3

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method id()I
    .registers 2

    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
