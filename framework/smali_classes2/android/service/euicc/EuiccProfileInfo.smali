.class public final Landroid/service/euicc/EuiccProfileInfo;
.super Ljava/lang/Object;
.source "EuiccProfileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccProfileInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accessRules:[Landroid/telephony/UiccAccessRule;

.field public final iccid:Ljava/lang/String;

.field public final nickname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/euicc/EuiccProfileInfo$1;

    invoke-direct {v0}, Landroid/service/euicc/EuiccProfileInfo$1;-><init>()V

    sput-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->iccid:Ljava/lang/String;

    sget-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->accessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/EuiccProfileInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iccid contains invalid characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo;->iccid:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/euicc/EuiccProfileInfo;->accessRules:[Landroid/telephony/UiccAccessRule;

    iput-object p3, p0, Landroid/service/euicc/EuiccProfileInfo;->nickname:Ljava/lang/String;

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

    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->accessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
