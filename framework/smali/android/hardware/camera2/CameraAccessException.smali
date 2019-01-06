.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# static fields
.field public static final CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final CAMERA_DISABLED:I = 0x1

.field public static final CAMERA_DISCONNECTED:I = 0x2

.field public static final CAMERA_ERROR:I = 0x3

.field public static final CAMERA_IN_USE:I = 0x4

.field public static final MAX_CAMERAS_IN_USE:I = 0x5

.field private static final serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method private static getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/hardware/camera2/CameraAccessException;->getProblemString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s (%d): %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultMessage(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "The camera device is in use already"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_15
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private static getProblemString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_20

    const-string/jumbo v0, "<UNKNOWN ERROR>"

    :goto_6
    return-object v0

    :sswitch_7
    const-string/jumbo v0, "CAMERA_IN_USE"

    goto :goto_6

    :sswitch_b
    const-string/jumbo v0, "MAX_CAMERAS_IN_USE"

    goto :goto_6

    :sswitch_f
    const-string/jumbo v0, "CAMERA_DISCONNECTED"

    goto :goto_6

    :sswitch_13
    const-string/jumbo v0, "CAMERA_DISABLED"

    goto :goto_6

    :sswitch_17
    const-string/jumbo v0, "CAMERA_ERROR"

    goto :goto_6

    :sswitch_1b
    const-string/jumbo v0, "CAMERA_DEPRECATED_HAL"

    goto :goto_6

    nop

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_f
        0x3 -> :sswitch_17
        0x4 -> :sswitch_7
        0x5 -> :sswitch_b
        0x3e8 -> :sswitch_1b
    .end sparse-switch
.end method


# virtual methods
.method public final getReason()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
