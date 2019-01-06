.class public Landroid/content/pm/PackageCleanItem;
.super Ljava/lang/Object;
.source "PackageCleanItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageCleanItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final andCode:Z

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/PackageCleanItem$1;

    invoke-direct {v0}, Landroid/content/pm/PackageCleanItem$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    iput-object p2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageCleanItem;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageCleanItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_5

    return v3

    :cond_5
    if-eqz p1, :cond_27

    :try_start_7
    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageCleanItem;

    move-object v2, v0

    iget v5, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    iget v6, v2, Landroid/content/pm/PackageCleanItem;->userId:I

    if-ne v5, v6, :cond_24

    iget-object v5, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-boolean v5, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    iget-boolean v6, v2, Landroid/content/pm/PackageCleanItem;->andCode:Z
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_1f} :catch_26

    if-ne v5, v6, :cond_22

    :goto_21
    return v3

    :cond_22
    move v3, v4

    goto :goto_21

    :cond_24
    move v3, v4

    goto :goto_21

    :catch_26
    move-exception v1

    :cond_27
    return v4
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget v1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_17
    add-int v0, v2, v1

    return v0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
