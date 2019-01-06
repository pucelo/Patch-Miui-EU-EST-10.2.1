.class public final Landroid/app/admin/SystemUpdateInfo;
.super Ljava/lang/Object;
.source "SystemUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdateInfo$1;
    }
.end annotation


# static fields
.field private static final ATTR_ORIGINAL_BUILD:Ljava/lang/String; = "original-build"

.field private static final ATTR_RECEIVED_TIME:Ljava/lang/String; = "received-time"

.field private static final ATTR_SECURITY_PATCH_STATE:Ljava/lang/String; = "security-patch-state"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/SystemUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_PATCH_STATE_FALSE:I = 0x1

.field public static final SECURITY_PATCH_STATE_TRUE:I = 0x2

.field public static final SECURITY_PATCH_STATE_UNKNOWN:I


# instance fields
.field private final mReceivedTime:J

.field private final mSecurityPatchState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/SystemUpdateInfo$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdateInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    iput p3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/SystemUpdateInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/SystemUpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static of(J)Landroid/app/admin/SystemUpdateInfo;
    .registers 4

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    goto :goto_7
.end method

.method public static of(JZ)Landroid/app/admin/SystemUpdateInfo;
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Landroid/app/admin/SystemUpdateInfo;

    if-eqz p2, :cond_12

    const/4 v0, 0x2

    :goto_d
    invoke-direct {v1, p0, p1, v0}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    move-object v0, v1

    goto :goto_7

    :cond_12
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdateInfo;
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v4, "original-build"

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return-object v5

    :cond_11
    const-string/jumbo v4, "received-time"

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "security-patch-state"

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Landroid/app/admin/SystemUpdateInfo;

    invoke-direct {v4, v2, v3, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    return-object v4
.end method

.method private static securityPatchStateToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized security patch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-string/jumbo v0, "false"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "true"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/app/admin/SystemUpdateInfo;

    iget-wide v4, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    iget-wide v6, v0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_26

    iget v3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    iget v4, v0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    if-ne v3, v4, :cond_24

    :goto_23
    return v1

    :cond_24
    move v1, v2

    goto :goto_23

    :cond_26
    move v1, v2

    goto :goto_23
.end method

.method public getReceivedTime()J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    return-wide v0
.end method

.method public getSecurityPatchState()I
    .registers 2

    iget v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "SystemUpdateInfo (receivedTime = %d, securityPatchState = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v2}, Landroid/app/admin/SystemUpdateInfo;->securityPatchStateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getReceivedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getSecurityPatchState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1, v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "received-time"

    iget-wide v2, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "security-patch-state"

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "original-build"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
