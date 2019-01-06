.class public abstract Landroid/hardware/radio/RadioTuner;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioTuner$Callback;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x1

.field public static final DIRECTION_UP:I = 0x0

.field public static final ERROR_BACKGROUND_SCAN_FAILED:I = 0x6

.field public static final ERROR_BACKGROUND_SCAN_UNAVAILABLE:I = 0x5

.field public static final ERROR_CANCELLED:I = 0x2

.field public static final ERROR_CONFIG:I = 0x4

.field public static final ERROR_HARDWARE_FAILURE:I = 0x0

.field public static final ERROR_SCAN_TIMEOUT:I = 0x3

.field public static final ERROR_SERVER_DIED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()I
.end method

.method public abstract cancelAnnouncement()V
.end method

.method public abstract close()V
.end method

.method public abstract getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
.end method

.method public abstract getMetadataImage(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
.end method

.method public abstract getProgramList(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasControl()Z
.end method

.method public abstract isAnalogForced()Z
.end method

.method public abstract isAntennaConnected()Z
.end method

.method public abstract scan(IZ)I
.end method

.method public abstract setAnalogForced(Z)V
.end method

.method public abstract setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
.end method

.method public abstract setMute(Z)I
.end method

.method public abstract startBackgroundScan()Z
.end method

.method public abstract step(IZ)I
.end method

.method public abstract tune(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tune(Landroid/hardware/radio/ProgramSelector;)V
.end method
