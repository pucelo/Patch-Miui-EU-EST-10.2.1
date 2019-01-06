.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDeviceVibrator;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$TabletModeChangedListener;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_POINTER_SPEED:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final MAX_POINTER_SPEED:I = 0x7

.field public static final META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final MIN_POINTER_SPEED:I = -0x7

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field public static final SWITCH_STATE_OFF:I = 0x0

.field public static final SWITCH_STATE_ON:I = 0x1

.field public static final SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final mIm:Landroid/hardware/input/IInputManager;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final mInputDevicesLock:Ljava/lang/Object;

.field private mOnTabletModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

.field private final mTabletModeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;
    .registers 2

    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/input/InputManager;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/hardware/input/InputManager;JZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManager;->onTabletModeChanged(JZ)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/input/IInputManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    return-void
.end method

.method private static containsDeviceId([II)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .registers 5

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_19

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    const/4 v2, -0x1

    return v2
.end method

.method private findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .registers 5

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 v2, -0x1

    return v2
.end method

.method public static getInstance()Landroid/hardware/input/InputManager;
    .registers 4

    const-class v2, Landroid/hardware/input/InputManager;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_19

    :try_start_7
    new-instance v1, Landroid/hardware/input/InputManager;

    const-string/jumbo v3, "input"

    invoke-static {v3}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_19
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_19} :catch_1d
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    :cond_19
    :try_start_19
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_24

    monitor-exit v2

    return-object v1

    :catch_1d
    move-exception v0

    :try_start_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initializeTabletModeListenerLocked()V
    .registers 4

    new-instance v1, Landroid/hardware/input/InputManager$TabletModeChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManager$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$TabletModeChangedListener;)V

    :try_start_6
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_15

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private onInputDevicesChanged([I)V
    .registers 10

    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    :cond_9
    :goto_9
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_26

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v5, 0x2

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    goto :goto_9

    :catchall_23
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_26
    const/4 v3, 0x0

    :goto_27
    :try_start_27
    array-length v5, p1

    if-ge v3, v5, :cond_60

    aget v1, p1, v3

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_55

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    if-eqz v0, :cond_52

    add-int/lit8 v5, v3, 0x1

    aget v2, p1, v5

    invoke-virtual {v0}, Landroid/view/InputDevice;->getGeneration()I

    move-result v5

    if-eq v5, v2, :cond_52

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    const/4 v5, 0x3

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x2

    goto :goto_27

    :cond_55
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x1

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_23

    goto :goto_52

    :cond_60
    monitor-exit v6

    return-void
.end method

.method private onTabletModeChanged(JZ)V
    .registers 9

    iget-object v4, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    monitor-exit v4

    return-void

    :catchall_1c
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private populateInputDevicesLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    if-nez v4, :cond_11

    new-instance v3, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    invoke-direct {v3, p0, v6}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$InputDevicesChangedListener;)V

    :try_start_a
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_30

    iput-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    :cond_11
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    if-nez v4, :cond_3c

    :try_start_15
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_36

    move-result-object v2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_23
    array-length v4, v2

    if-ge v1, v4, :cond_3c

    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    aget v5, v2, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_3c
    return-void
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .registers 7

    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1c

    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-nez p2, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createInputForwarder(I)Landroid/app/IInputForwarder;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deviceHasKeys(I[I)[Z
    .registers 7

    array-length v2, p2

    new-array v1, v2, [Z

    :try_start_3
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v3, -0x100

    invoke-interface {v2, p1, v3, p2, v1}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public deviceHasKeys([I)[Z
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public disableInputDevice(I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not disable input device with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableInputDevice(I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not enable input device with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    return-object v1

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_30

    move-result v1

    if-gez v1, :cond_11

    monitor-exit v4

    return-object v5

    :cond_11
    :try_start_11
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_30

    if-nez v2, :cond_28

    :try_start_1b
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_2a
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    move-result-object v2

    if-eqz v2, :cond_28

    :try_start_23
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_30

    :cond_28
    monitor-exit v4

    return-object v2

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 10

    const/4 v7, 0x0

    if-nez p1, :cond_c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "descriptor must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_f
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v4, :cond_50

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    if-nez v3, :cond_44

    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_3c

    move-result v2

    :try_start_2b
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5, v2}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_36
    .catchall {:try_start_2b .. :try_end_30} :catchall_3c

    move-result-object v3

    if-nez v3, :cond_3f

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3f
    :try_start_3f
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    :cond_44
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_3c

    move-result v5

    if-eqz v5, :cond_33

    monitor-exit v6

    return-object v3

    :cond_50
    monitor-exit v6

    return-object v7
.end method

.method public getInputDeviceIds()[I
    .registers 6

    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1c

    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    monitor-exit v4

    return-object v2

    :catchall_1e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDeviceVibrator(I)Landroid/os/Vibrator;
    .registers 3

    new-instance v0, Landroid/hardware/input/InputManager$InputDeviceVibrator;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    return-object v1

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPointerSpeed(Landroid/content/Context;)I
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pointer_speed"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v1

    :goto_c
    return v1

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-eqz p2, :cond_1c

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1c

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mode is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    move-result v1

    return v1

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInTabletMode()I
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->isInTabletMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->isInputDeviceEnabled(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not check enabled status of input device with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v0

    if-gez v0, :cond_21

    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    if-nez v2, :cond_15

    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeTabletModeListenerLocked()V

    :cond_15
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    if-gez v1, :cond_25

    new-instance v0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit v3

    return-void

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-nez p2, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-nez p2, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPointerIconType(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPointerSpeed(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, -0x7

    if-lt p2, v0, :cond_6

    const/4 v0, 0x7

    if-le p2, v0, :cond_f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public switchTouchCoverMode(Z)V
    .registers 5

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchCoverMode(Z)V

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchCoverMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_8

    :catch_10
    move-exception v0

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "SwitchTouchCoverMode: Error is :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public switchTouchSensitiveMode(Z)V
    .registers 5

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchSensitiveMode(Z)V

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchSensitiveMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_8

    :catch_10
    move-exception v0

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "SwitchTouchSensitiveMode: Error is :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public switchTouchStylusMode(Z)V
    .registers 5

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchStylusMode(Z)V

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchStylusMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_8

    :catch_10
    move-exception v0

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "SwitchTouchStylusMode: Error is :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public switchTouchWakeupMode(Z)V
    .registers 5

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchWakeupMode(Z)V

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->switchTouchWakeupMode(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_8

    :catch_10
    move-exception v0

    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "SwitchTouchWakeupMode: Error is :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public tryPointerSpeed(I)V
    .registers 5

    const/4 v1, -0x7

    if-lt p1, v1, :cond_6

    const/4 v1, 0x7

    if-le p1, v1, :cond_f

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "speed out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    if-ltz v1, :cond_25

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit v3

    return-void

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    if-ltz v1, :cond_20

    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v3

    return-void

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method
