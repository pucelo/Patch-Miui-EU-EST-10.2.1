.class public final Landroid/telecom/ParcelableConnection;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConnection$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Landroid/net/Uri;

.field private final mAddressPresentation:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConferenceableConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectElapsedTimeMillis:J

.field private final mConnectTimeMillis:J

.field private final mConnectionCapabilities:I

.field private final mConnectionProperties:I

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsVoipAudioMode:Z

.field private mParentCallId:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mRingbackRequested:Z

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mSupportedAudioRoutes:I

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/ParcelableConnection$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConnection$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "IIII",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZJJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput p2, p0, Landroid/telecom/ParcelableConnection;->mState:I

    iput p3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    iput p4, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    iput p5, p0, Landroid/telecom/ParcelableConnection;->mSupportedAudioRoutes:I

    iput-object p6, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    iput p7, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    iput-object p8, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    iput p9, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    iput-object p10, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iput p11, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    move/from16 v0, p12

    iput-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    move-wide/from16 v0, p14

    iput-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectElapsedTimeMillis:J

    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    move-object/from16 v0, p19

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    move-object/from16 v0, p20

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "IIII",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZJJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    move-object/from16 v0, p22

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConferenceableConnectionIds()Ljava/util/List;
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

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public getConnectElapsedTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public getConnectTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    return v0
.end method

.method public getConnectionProperties()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    return v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    return v0
.end method

.method public getIsVoipAudioMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public final getParentCallId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getSupportedAudioRoutes()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    return v0
.end method

.method public isRingbackRequested()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ParcelableConnection [act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    invoke-static {v1}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v3, p0, Landroid/telecom/ParcelableConnection;->mState:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v3, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v3, :cond_30

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    if-eqz v0, :cond_77

    move v0, v1

    :goto_3d
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    if-eqz v0, :cond_79

    :goto_45
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/ParcelableConnection;->mSupportedAudioRoutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectElapsedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_77
    move v0, v2

    goto :goto_3d

    :cond_79
    move v1, v2

    goto :goto_45
.end method
