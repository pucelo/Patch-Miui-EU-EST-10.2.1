.class public Landroid/text/style/SpellCheckSpan;
.super Ljava/lang/Object;
.source "SpellCheckSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mSpellCheckInProgress:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/SpellCheckSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public isSpellCheckInProgress()Z
    .registers 2

    iget-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    return v0
.end method

.method public setSpellCheckInProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SpellCheckSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
