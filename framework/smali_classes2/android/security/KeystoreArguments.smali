.class public Landroid/security/KeystoreArguments;
.super Ljava/lang/Object;
.source "KeystoreArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeystoreArguments$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/KeystoreArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public args:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/KeystoreArguments$1;

    invoke-direct {v0}, Landroid/security/KeystoreArguments$1;-><init>()V

    sput-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/KeystoreArguments;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([[B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeystoreArguments;->args:[[B

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [[B

    iput-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    if-nez v2, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    return-void

    :cond_9
    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    array-length v3, v2

    :goto_12
    if-ge v1, v3, :cond_8

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method
