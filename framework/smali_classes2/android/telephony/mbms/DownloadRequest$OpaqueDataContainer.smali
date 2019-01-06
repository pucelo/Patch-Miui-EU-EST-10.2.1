.class Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpaqueDataContainer"
.end annotation


# instance fields
.field private final appIntent:Ljava/lang/String;

.field private final version:I


# direct methods
.method static synthetic -get0(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->appIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)I
    .registers 2

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->version:I

    return v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->appIntent:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->version:I

    return-void
.end method
