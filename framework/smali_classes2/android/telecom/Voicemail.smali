.class public Landroid/telecom/Voicemail;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Voicemail$1;,
        Landroid/telecom/Voicemail$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mTranscription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/Voicemail$1;

    invoke-direct {v0}, Landroid/telecom/Voicemail$1;-><init>()V

    sput-object v0, Landroid/telecom/Voicemail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_7e

    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    :goto_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_81

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    :goto_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_84

    move v0, v1

    :goto_63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_86

    :goto_6f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-void

    :cond_7e
    iput-object v3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    goto :goto_28

    :cond_81
    iput-object v3, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    goto :goto_5c

    :cond_84
    move v0, v2

    goto :goto_63

    :cond_86
    move v1, v2

    goto :goto_6f
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/Voicemail;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/Voicemail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    iput-object p2, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p4, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    iput-object p5, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    iput-object p6, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    iput-object p7, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    iput-object p8, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    iput-object p9, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    iput-object p10, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    iput-object p11, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 5

    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$Builder;)V

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setTimestamp(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 5

    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$Builder;)V

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setId(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .registers 3

    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContent()Z
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .registers 2

    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_56

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_5f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3a
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_45
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_50
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void

    :cond_56
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_5f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a

    :cond_68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    :cond_6c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50
.end method
