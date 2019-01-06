.class public final Landroid/service/notification/SnoozeCriterion;
.super Ljava/lang/Object;
.source "SnoozeCriterion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/SnoozeCriterion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfirmation:Ljava/lang/CharSequence;

.field private final mExplanation:Ljava/lang/CharSequence;

.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/notification/SnoozeCriterion$1;

    invoke-direct {v0}, Landroid/service/notification/SnoozeCriterion$1;-><init>()V

    sput-object v0, Landroid/service/notification/SnoozeCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    :goto_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    :goto_28
    return-void

    :cond_29
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    goto :goto_10

    :cond_2c
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_1c

    :cond_2f
    iput-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    goto :goto_28
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/service/notification/SnoozeCriterion;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/service/notification/SnoozeCriterion;

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    :cond_25
    return v2

    :cond_26
    iget-object v3, v0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-nez v3, :cond_25

    :cond_2a
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3f

    :cond_3a
    return v2

    :cond_3b
    iget-object v3, v0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-nez v3, :cond_3a

    :cond_3f
    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4c

    iget-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    iget-object v3, v0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4b

    move v1, v2

    goto :goto_4b
.end method

.method public getConfirmation()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_17
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v3, :cond_25

    iget-object v2, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_25
    add-int v0, v1, v2

    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_b

    :cond_2a
    move v1, v2

    goto :goto_17
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_e
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :goto_1a
    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/notification/SnoozeCriterion;->mConfirmation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :goto_26
    return-void

    :cond_27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_e

    :cond_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1a

    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_26
.end method
