.class public final Landroid/telephony/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/RadioAccessSpecifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bands:[I

.field public channels:[I

.field public radioAccessNetwork:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/RadioAccessSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I[I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    iput-object p2, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    iput-object p3, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/RadioAccessSpecifier;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/RadioAccessSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/RadioAccessSpecifier;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    if-nez p1, :cond_a

    return v3

    :catch_8
    move-exception v1

    return v3

    :cond_a
    iget v4, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    iget v5, v2, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    if-ne v4, v5, :cond_22

    iget-object v4, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    iget-object v5, v2, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v3, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    iget-object v4, v2, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    :cond_22
    return v3
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x27

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->bands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->channels:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
