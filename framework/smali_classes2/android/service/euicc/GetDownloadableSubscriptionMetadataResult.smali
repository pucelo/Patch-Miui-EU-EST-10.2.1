.class public final Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.super Ljava/lang/Object;
.source "GetDownloadableSubscriptionMetadataResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final result:I

.field public final subscription:Landroid/telephony/euicc/DownloadableSubscription;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/telephony/euicc/DownloadableSubscription;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    if-nez v0, :cond_d

    iput-object p2, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    :goto_c
    return-void

    :cond_d
    if-eqz p2, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error result with non-null subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object v1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_c
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;-><init>(Landroid/os/Parcel;)V

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

    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
