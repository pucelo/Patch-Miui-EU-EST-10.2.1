.class public final Landroid/telecom/PhoneAccount;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccount$1;,
        Landroid/telecom/PhoneAccount$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_PROVIDER:I = 0x2

.field public static final CAPABILITY_CALL_SUBJECT:I = 0x40

.field public static final CAPABILITY_CONNECTION_MANAGER:I = 0x1

.field public static final CAPABILITY_EMERGENCY_CALLS_ONLY:I = 0x80

.field public static final CAPABILITY_EMERGENCY_VIDEO_CALLING:I = 0x200

.field public static final CAPABILITY_MULTI_USER:I = 0x20

.field public static final CAPABILITY_PLACE_EMERGENCY_CALLS:I = 0x10

.field public static final CAPABILITY_RTT:I = 0x1000

.field public static final CAPABILITY_SELF_MANAGED:I = 0x800

.field public static final CAPABILITY_SIM_SUBSCRIPTION:I = 0x4

.field public static final CAPABILITY_SUPPORTS_VIDEO_CALLING:I = 0x400

.field public static final CAPABILITY_VIDEO_CALLING:I = 0x8

.field public static final CAPABILITY_VIDEO_CALLING_RELIES_ON_PRESENCE:I = 0x100

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALWAYS_USE_VOIP_AUDIO_MODE:Ljava/lang/String; = "codeaurora.org.extra.ALWAYS_USE_VOIP_AUDIO_MODE"

.field public static final EXTRA_CALL_SUBJECT_CHARACTER_ENCODING:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

.field public static final EXTRA_CALL_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

.field public static final EXTRA_LOG_SELF_MANAGED_CALLS:Ljava/lang/String; = "android.telecom.extra.LOG_SELF_MANAGED_CALLS"

.field public static final EXTRA_SORT_ORDER:Ljava/lang/String; = "android.telecom.extra.SORT_ORDER"

.field public static final EXTRA_SUPPORTS_HANDOVER_FROM:Ljava/lang/String; = "android.telecom.extra.SUPPORTS_HANDOVER_FROM"

.field public static final EXTRA_SUPPORTS_HANDOVER_TO:Ljava/lang/String; = "android.telecom.extra.SUPPORTS_HANDOVER_TO"

.field public static final EXTRA_SUPPORTS_VIDEO_CALLING_FALLBACK:Ljava/lang/String; = "android.telecom.extra.SUPPORTS_VIDEO_CALLING_FALLBACK"

.field public static final NO_HIGHLIGHT_COLOR:I = 0x0

.field public static final NO_ICON_TINT:I = 0x0

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mCapabilities:I

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupId:Ljava/lang/String;

.field private final mHighlightColor:I

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mShortDescription:Ljava/lang/CharSequence;

.field private final mSubscriptionAddress:Landroid/net/Uri;

.field private final mSupportedAudioRoutes:I

.field private final mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/PhoneAccount$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccount$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_84

    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_87

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    :goto_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_8a

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    :goto_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_8d

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    :goto_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_90

    move v0, v1

    :goto_6f
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    return-void

    :cond_84
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    goto :goto_16

    :cond_87
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    goto :goto_26

    :cond_8a
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    goto :goto_36

    :cond_8d
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_68

    :cond_90
    move v0, v2

    goto :goto_6f
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "I",
            "Landroid/graphics/drawable/Icon;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    iput-object p3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    iput p4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    iput-object p5, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    iput p6, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    iput-object p7, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    iput-object p8, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    iput-object p10, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    iput p11, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    iput-boolean p12, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    iput-object p13, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Landroid/telecom/PhoneAccount;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;)V

    return-void
.end method

.method private audioRoutesToString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .registers 3

    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private capabilitiesToString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "SelfManaged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "SuppVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "Video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "Presence "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "CallProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string/jumbo v1, "CallSubject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string/jumbo v1, "ConnectionMgr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string/jumbo v1, "EmergOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string/jumbo v1, "MultiUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string/jumbo v1, "PlaceEmerg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string/jumbo v1, "EmergVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9d
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string/jumbo v1, "SimSub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getCapabilities()I
    .registers 2

    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightColor()I
    .registers 2

    iget v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubscriptionAddress()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getSupportedAudioRoutes()I
    .registers 2

    iget v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    return v0
.end method

.method public getSupportedUriSchemes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    return-object v0
.end method

.method public hasAudioRoutes(I)Z
    .registers 3

    iget v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasCapabilities(I)Z
    .registers 3

    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return v0
.end method

.method public isSelfManaged()Z
    .registers 3

    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setIsEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return-void
.end method

.method public supportsUriScheme(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return v3

    :cond_8
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    return v2

    :cond_24
    return v3
.end method

.method public toBuilder()Landroid/telecom/PhoneAccount$Builder;
    .registers 2

    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v3, :cond_65

    const/16 v3, 0x58

    :goto_12
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] PhoneAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/telecom/PhoneAccount;->capabilitiesToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Audio Routes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/telecom/PhoneAccount;->audioRoutesToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Schemes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_65
    const/16 v3, 0x20

    goto :goto_12

    :cond_68
    const-string/jumbo v3, " Extras: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " GroupId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    invoke-static {v3}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v2, :cond_4f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    if-nez v2, :cond_58

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    if-nez v2, :cond_61

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget v2, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_6a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_37
    iget-boolean v2, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v2, :cond_73

    :goto_3b
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_6a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    :cond_73
    move v0, v1

    goto :goto_3b
.end method
