.class final Landroid/media/MediaCas$1;
.super Landroid/util/Singleton;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Landroid/hardware/cas/V1_0/IMediaCasService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/hardware/cas/V1_0/IMediaCasService;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/hardware/cas/V1_0/IMediaCasService;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/media/MediaCas$1;->create()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    return-object v0
.end method
