.class public Landroid/os/VibrationEffect$Prebaked;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prebaked"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Prebaked$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/VibrationEffect$Prebaked;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEffectId:I

.field private mFallback:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/VibrationEffect$Prebaked$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Prebaked$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Prebaked;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    iput p1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    iput-boolean p2, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-direct {p0, v1, v0}, Landroid/os/VibrationEffect$Prebaked;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/os/VibrationEffect$Prebaked;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    iget v3, v0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    if-ne v2, v3, :cond_16

    iget-boolean v2, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    iget-boolean v3, v0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    return v0
.end method

.method public shouldFallback()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Prebaked{mEffectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 4

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown prebaked effect type (value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_e
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method
