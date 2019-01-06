.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mViewId:I

.field private final mVirtual:Z

.field private final mVirtualId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_19

    :goto_10
    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillId;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    iget v0, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    iput v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/view/autofill/AutofillId;

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v2, v0, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v1, v2, :cond_1d

    return v3

    :cond_1d
    iget v1, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    iget v2, v0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    if-eq v1, v2, :cond_24

    return v3

    :cond_24
    return v4
.end method

.method public getViewId()I
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public getVirtualChildId()I
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    add-int v1, v2, v3

    return v1
.end method

.method public isVirtual()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    if-eqz v1, :cond_1a

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method
