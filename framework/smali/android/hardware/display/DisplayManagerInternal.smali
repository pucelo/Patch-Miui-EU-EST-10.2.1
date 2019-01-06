.class public abstract Landroid/hardware/display/DisplayManagerInternal;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public abstract getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract getScreenBrightnessFromDisplayManager()I
.end method

.method public abstract initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end method

.method public abstract isProximitySensorAvailable()Z
.end method

.method public abstract isUidPresentOnDisplay(II)Z
.end method

.method public abstract performTraversalInTransactionFromWindowManager()V
.end method

.method public abstract registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method

.method public abstract requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
.end method

.method public abstract setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract setDisplayOffsets(III)V
.end method

.method public abstract setDisplayProperties(IZFIZ)V
.end method

.method public abstract unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method
