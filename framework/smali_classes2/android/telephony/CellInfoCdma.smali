.class public final Landroid/telephony/CellInfoCdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfoCdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfoCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoCdma"


# instance fields
.field private mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

.field private mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfoCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityCdma;

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoCdma;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->copy()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    iget-object v0, p1, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;
    .registers 2

    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "CellInfoCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    return v3

    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    move-object v2, v0

    iget-object v4, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    iget-object v5, v2, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v4, v5}, Landroid/telephony/CellIdentityCdma;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v5, v2, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v4, v5}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_1f

    move-result v3

    :cond_1e
    return v3

    :catch_1f
    move-exception v1

    return v3
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityCdma;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityCdma;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CellInfoCdma:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x2

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityCdma;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthCdma;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
