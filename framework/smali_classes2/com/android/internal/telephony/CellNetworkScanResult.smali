.class public Lcom/android/internal/telephony/CellNetworkScanResult;
.super Ljava/lang/Object;
.source "CellNetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellNetworkScanResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/CellNetworkScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_RADIO_GENERIC_FAILURE:I = 0x3

.field public static final STATUS_RADIO_NOT_AVAILABLE:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final mOperators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CellNetworkScanResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    iput-object p2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_29

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_2c

    iget-object v3, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    :cond_2c
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/CellNetworkScanResult;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOperators()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "CellNetworkScanResult: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string/jumbo v3, " network:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_38
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mStatus:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/CellNetworkScanResult;->mOperators:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_34
    return-void
.end method
