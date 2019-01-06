.class public Landroid/telephony/mbms/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Source URI must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/mbms/DownloadRequest;
    .registers 8

    new-instance v0, Landroid/telephony/mbms/DownloadRequest;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    iget-object v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest;)V

    return-object v0
.end method

.method public setAppIntent(Landroid/content/Intent;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "App intent must not exceed length 50000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    return-object p0
.end method

.method public setOpaqueData([B)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 8

    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;

    invoke-static {v0}, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->-get1(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)I

    move-result v4

    iput v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    invoke-static {v0}, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->-get0(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception v2

    const-string/jumbo v4, "MbmsDownloadRequest"

    const-string/jumbo v5, "Got ClassNotFoundException trying to parse opaque data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_2d
    move-exception v1

    const-string/jumbo v4, "MbmsDownloadRequest"

    const-string/jumbo v5, "Got IOException trying to parse opaque data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceInfo(Landroid/telephony/mbms/FileServiceInfo;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 3

    invoke-virtual {p1}, Landroid/telephony/mbms/FileServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    return-object p0
.end method
