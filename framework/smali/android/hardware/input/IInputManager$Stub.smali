.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_cancelVibrate:I = 0x19

.field static final TRANSACTION_createInputForwarder:I = 0x21

.field static final TRANSACTION_disableInputDevice:I = 0x5

.field static final TRANSACTION_enableInputDevice:I = 0x4

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x10

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xd

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x13

.field static final TRANSACTION_getKeyboardLayouts:I = 0xb

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x9

.field static final TRANSACTION_hasKeys:I = 0x6

.field static final TRANSACTION_injectInputEvent:I = 0x8

.field static final TRANSACTION_isInTabletMode:I = 0x16

.field static final TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x15

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x17

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_requestPointerCapture:I = 0x1c

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setCustomPointerIcon:I = 0x1b

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x14

.field static final TRANSACTION_setPointerIconType:I = 0x1a

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xa

.field static final TRANSACTION_switchTouchCoverMode:I = 0x20

.field static final TRANSACTION_switchTouchSensitiveMode:I = 0x1d

.field static final TRANSACTION_switchTouchStylusMode:I = 0x1e

.field static final TRANSACTION_switchTouchWakeupMode:I = 0x1f

.field static final TRANSACTION_tryPointerSpeed:I = 0x7

.field static final TRANSACTION_vibrate:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/input/IInputManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_5c8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v37

    return v37

    :sswitch_8
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v37, 0x1

    return v37

    :sswitch_15
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_45

    const/16 v37, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_42
    const/16 v37, 0x1

    return v37

    :cond_45
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    :sswitch_4f
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v37, 0x1

    return v37

    :sswitch_6a
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_8f

    const/16 v37, 0x1

    :goto_85
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    return v37

    :cond_8f
    const/16 v37, 0x0

    goto :goto_85

    :sswitch_92
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_ab
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_c4
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-gez v26, :cond_104

    const/16 v25, 0x0

    :goto_e2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v4, v13, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_10b

    const/16 v37, 0x1

    :goto_f3
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    const/16 v37, 0x1

    return v37

    :cond_104
    move/from16 v0, v26

    new-array v0, v0, [Z

    move-object/from16 v25, v0

    goto :goto_e2

    :cond_10b
    const/16 v37, 0x0

    goto :goto_f3

    :sswitch_10e
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_127
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_15e

    sget-object v37, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputEvent;

    :goto_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_160

    const/16 v37, 0x1

    :goto_154
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    return v37

    :cond_15e
    const/4 v9, 0x0

    goto :goto_143

    :cond_160
    const/16 v37, 0x0

    goto :goto_154

    :sswitch_163
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_197

    const/16 v37, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_194
    const/16 v37, 0x1

    return v37

    :cond_197
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_194

    :sswitch_1a1
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_1d2

    sget-object v37, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/TouchCalibration;

    :goto_1c5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v13, v1}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_1d2
    const/16 v20, 0x0

    goto :goto_1c5

    :sswitch_1d5
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v37, 0x1

    return v37

    :sswitch_1f4
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_227

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_210
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v37, 0x1

    return v37

    :cond_227
    const/4 v7, 0x0

    goto :goto_210

    :sswitch_229
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_259

    const/16 v37, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_256
    const/16 v37, 0x1

    return v37

    :cond_259
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_256

    :sswitch_263
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_292

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_27f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v37, 0x1

    return v37

    :cond_292
    const/4 v7, 0x0

    goto :goto_27f

    :sswitch_294
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_2c1

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_2b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_2c1
    const/4 v7, 0x0

    goto :goto_2b0

    :sswitch_2c3
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_2f2

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_2df
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v37, 0x1

    return v37

    :cond_2f2
    const/4 v7, 0x0

    goto :goto_2df

    :sswitch_2f4
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_321

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_321
    const/4 v7, 0x0

    goto :goto_310

    :sswitch_323
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_350

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_33f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_350
    const/4 v7, 0x0

    goto :goto_33f

    :sswitch_352
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_3b6

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_36e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_3b8

    sget-object v37, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    :goto_380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_3ba

    sget-object v37, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_392
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v15, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_3bd

    const/16 v37, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3b3
    const/16 v37, 0x1

    return v37

    :cond_3b6
    const/4 v7, 0x0

    goto :goto_36e

    :cond_3b8
    const/4 v15, 0x0

    goto :goto_380

    :cond_3ba
    const/16 v21, 0x0

    goto :goto_392

    :cond_3bd
    const/16 v37, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b3

    :sswitch_3c7
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_41a

    sget-object v37, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_3e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_41c

    sget-object v37, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    :goto_3f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_41e

    sget-object v37, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v7, v15, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_41a
    const/4 v7, 0x0

    goto :goto_3e3

    :cond_41c
    const/4 v15, 0x0

    goto :goto_3f5

    :cond_41e
    const/16 v21, 0x0

    goto :goto_407

    :sswitch_421
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_43e
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v37, 0x1

    return v37

    :sswitch_459
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_476
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v23

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_4a1
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_4be
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :sswitch_4d7
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_4fe

    sget-object v37, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/PointerIcon;

    :goto_4f3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_4fe
    const/4 v10, 0x0

    goto :goto_4f3

    :sswitch_500
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_523

    const/16 v17, 0x1

    :goto_516
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_523
    const/16 v17, 0x0

    goto :goto_516

    :sswitch_526
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_542

    const/4 v12, 0x1

    :goto_537
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/input/IInputManager$Stub;->switchTouchSensitiveMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_542
    const/4 v12, 0x0

    goto :goto_537

    :sswitch_544
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_560

    const/4 v12, 0x1

    :goto_555
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/input/IInputManager$Stub;->switchTouchStylusMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_560
    const/4 v12, 0x0

    goto :goto_555

    :sswitch_562
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_57e

    const/4 v12, 0x1

    :goto_573
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/input/IInputManager$Stub;->switchTouchWakeupMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_57e
    const/4 v12, 0x0

    goto :goto_573

    :sswitch_580
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_59c

    const/4 v12, 0x1

    :goto_591
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/hardware/input/IInputManager$Stub;->switchTouchCoverMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v37, 0x1

    return v37

    :cond_59c
    const/4 v12, 0x0

    goto :goto_591

    :sswitch_59e
    const-string/jumbo v37, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_5c5

    invoke-interface/range {v28 .. v28}, Landroid/app/IInputForwarder;->asBinder()Landroid/os/IBinder;

    move-result-object v37

    :goto_5bb
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v37, 0x1

    return v37

    :cond_5c5
    const/16 v37, 0x0

    goto :goto_5bb

    :sswitch_data_5c8
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_92
        0x5 -> :sswitch_ab
        0x6 -> :sswitch_c4
        0x7 -> :sswitch_10e
        0x8 -> :sswitch_127
        0x9 -> :sswitch_163
        0xa -> :sswitch_1a1
        0xb -> :sswitch_1d5
        0xc -> :sswitch_1f4
        0xd -> :sswitch_229
        0xe -> :sswitch_263
        0xf -> :sswitch_294
        0x10 -> :sswitch_2c3
        0x11 -> :sswitch_2f4
        0x12 -> :sswitch_323
        0x13 -> :sswitch_352
        0x14 -> :sswitch_3c7
        0x15 -> :sswitch_421
        0x16 -> :sswitch_43e
        0x17 -> :sswitch_459
        0x18 -> :sswitch_476
        0x19 -> :sswitch_4a1
        0x1a -> :sswitch_4be
        0x1b -> :sswitch_4d7
        0x1c -> :sswitch_500
        0x1d -> :sswitch_526
        0x1e -> :sswitch_544
        0x1f -> :sswitch_562
        0x20 -> :sswitch_580
        0x21 -> :sswitch_59e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
