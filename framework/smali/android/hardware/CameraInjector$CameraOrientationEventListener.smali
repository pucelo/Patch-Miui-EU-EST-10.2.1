.class Landroid/hardware/CameraInjector$CameraOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraOrientationEventListener"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    iput-object p2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 7

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    return-void

    :cond_4
    iget v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    invoke-static {p1, v2}, Landroid/hardware/CameraInjector;->-wrap0(II)I

    move-result v2

    iput v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    iget v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_62

    iget-object v2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_63

    const/4 v1, 0x1

    :goto_1c
    invoke-static {}, Landroid/hardware/CameraInjector;->-get0()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2}, Landroid/hardware/CameraInjector$CameraExInfo;->-get3(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v2

    if-eq v2, v1, :cond_62

    const-string/jumbo v2, "CameraInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReverseFrameData change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current client orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/CameraInjector;->-get0()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-set2(Landroid/hardware/CameraInjector$CameraExInfo;Z)Z

    :cond_62
    return-void

    :cond_63
    const/4 v1, 0x0

    goto :goto_1c
.end method
