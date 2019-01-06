.class public final Landroid/telephony/euicc/DownloadableSubscription;
.super Ljava/lang/Object;
.source "DownloadableSubscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/DownloadableSubscription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessRules:[Landroid/telephony/UiccAccessRule;

.field private carrierName:Ljava/lang/String;

.field public final encodedActivationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription$1;

    invoke-direct {v0}, Landroid/telephony/euicc/DownloadableSubscription$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    sget-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/euicc/DownloadableSubscription;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    return-void
.end method

.method public static forActivationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription;
    .registers 2

    const-string/jumbo v0, "Activation code may not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessRules()[Landroid/telephony/UiccAccessRule;
    .registers 2

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessRules([Landroid/telephony/UiccAccessRule;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
