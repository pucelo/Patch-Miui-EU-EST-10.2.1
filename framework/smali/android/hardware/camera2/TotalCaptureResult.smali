.class public final Landroid/hardware/camera2/TotalCaptureResult;
.super Landroid/hardware/camera2/CaptureResult;
.source "TotalCaptureResult.java"


# instance fields
.field private final mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    if-nez p4, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    :goto_c
    iput p5, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return-void

    :cond_f
    iput-object p4, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_c
.end method


# virtual methods
.method public getPartialResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return v0
.end method
