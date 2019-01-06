.class public Landroid/os/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Temperature$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mType:I

.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Temperature$1;

    invoke-direct {v0}, Landroid/os/Temperature$1;-><init>()V

    sput-object v0, Landroid/os/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/os/Temperature;->mType:I

    const v0, -0x800001

    iput v0, p0, Landroid/os/Temperature;->mValue:F

    return-void
.end method

.method public constructor <init>(FI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/Temperature;->mValue:F

    iput p2, p0, Landroid/os/Temperature;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Temperature;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Temperature;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Temperature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/os/Temperature;->mType:I

    return v0
.end method

.method public getValue()F
    .registers 2

    iget v0, p0, Landroid/os/Temperature;->mValue:F

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Temperature;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
