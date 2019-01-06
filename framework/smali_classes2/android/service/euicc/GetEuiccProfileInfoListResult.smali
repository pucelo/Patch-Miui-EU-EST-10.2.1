.class public final Landroid/service/euicc/GetEuiccProfileInfoListResult;
.super Ljava/lang/Object;
.source "GetEuiccProfileInfoListResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/GetEuiccProfileInfoListResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/euicc/GetEuiccProfileInfoListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isRemovable:Z

.field public final profiles:[Landroid/service/euicc/EuiccProfileInfo;

.field public final result:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/service/euicc/EuiccProfileInfo;Z)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    iput-boolean p3, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->isRemovable:Z

    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    if-nez v0, :cond_f

    iput-object p2, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    :goto_e
    return-void

    :cond_f
    if-eqz p2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error result with non-null profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object v1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    goto :goto_e
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    sget-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/euicc/EuiccProfileInfo;

    iput-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->isRemovable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetEuiccProfileInfoListResult;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->isRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
