.class public final Landroid/telephony/mbms/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/DownloadRequest$1;,
        Landroid/telephony/mbms/DownloadRequest$Builder;,
        Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsDownloadRequest"

.field public static final MAX_APP_INTENT_SIZE:I = 0xc350

.field public static final MAX_DESTINATION_URI_SIZE:I = 0xc350


# instance fields
.field private final fileServiceId:Ljava/lang/String;

.field private final serializedResultIntentForApp:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;

.field private final subscriptionId:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/mbms/DownloadRequest$1;

    invoke-direct {v0}, Landroid/telephony/mbms/DownloadRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/mbms/DownloadRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/mbms/DownloadRequest;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget v0, p1, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iget-object v0, p1, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget v0, p1, Landroid/telephony/mbms/DownloadRequest;->version:I

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iput p3, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iput-object p4, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static copy(Landroid/telephony/mbms/DownloadRequest;)Landroid/telephony/mbms/DownloadRequest;
    .registers 2

    new-instance v0, Landroid/telephony/mbms/DownloadRequest;

    invoke-direct {v0, p0}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/telephony/mbms/DownloadRequest;)V

    return-object v0
.end method

.method public static getMaxAppIntentSize()I
    .registers 1

    const v0, 0xc350

    return v0
.end method

.method public static getMaxDestinationUriSize()I
    .registers 1

    const v0, 0xc350

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/telephony/mbms/DownloadRequest;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    iget v2, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iget v3, v0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    if-ne v2, v3, :cond_38

    iget v2, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    iget v3, v0, Landroid/telephony/mbms/DownloadRequest;->version:I

    if-ne v2, v3, :cond_38

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_38
    return v1
.end method

.method public getFileServiceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_35

    move-result-object v0

    iget v2, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2a

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    :cond_2a
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_35
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Could not get sha256 hash object"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntentForApp()Landroid/content/Intent;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getOpaqueData()[B
    .registers 7

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;

    iget-object v4, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-direct {v1, v4, v5}, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v4

    return-object v4

    :catch_1e
    move-exception v2

    const-string/jumbo v4, "MbmsDownloadRequest"

    const-string/jumbo v5, "Got IOException trying to serialize opaque data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public getSourceUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubscriptionId()I
    .registers 2

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMultipartDownload()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/mbms/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/telephony/mbms/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
