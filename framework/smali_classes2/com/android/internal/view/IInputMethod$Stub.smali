.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final TRANSACTION_attachToken:I = 0x1

.field static final TRANSACTION_bindInput:I = 0x2

.field static final TRANSACTION_changeInputMethodSubtype:I = 0xa

.field static final TRANSACTION_createSession:I = 0x5

.field static final TRANSACTION_hideSoftInput:I = 0x9

.field static final TRANSACTION_revokeSession:I = 0x7

.field static final TRANSACTION_setSessionEnabled:I = 0x6

.field static final TRANSACTION_showSoftInput:I = 0x8

.field static final TRANSACTION_startInput:I = 0x4

.field static final TRANSACTION_unbindInput:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.view.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_148

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_8
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_12
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethod$Stub;->attachToken(Landroid/os/IBinder;)V

    const/4 v1, 0x1

    return v1

    :sswitch_23
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputBinding;

    :goto_3b
    invoke-virtual {p0, v9}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    const/4 v1, 0x1

    return v1

    :cond_40
    const/4 v9, 0x0

    goto :goto_3b

    :sswitch_42
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    const/4 v1, 0x1

    return v1

    :sswitch_4f
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_84

    sget-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_86

    const/4 v6, 0x1

    :goto_7e
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V

    const/4 v1, 0x1

    return v1

    :cond_84
    const/4 v5, 0x0

    goto :goto_77

    :cond_86
    const/4 v6, 0x0

    goto :goto_7e

    :sswitch_88
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ad

    sget-object v1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputChannel;

    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    move-result-object v13

    invoke-virtual {p0, v8, v13}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    const/4 v1, 0x1

    return v1

    :cond_ad
    const/4 v8, 0x0

    goto :goto_a0

    :sswitch_af
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_cb

    const/4 v14, 0x1

    :goto_c6
    invoke-virtual {p0, v11, v14}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    const/4 v1, 0x1

    return v1

    :cond_cb
    const/4 v14, 0x0

    goto :goto_c6

    :sswitch_cd
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/view/IInputMethod$Stub;->revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    const/4 v1, 0x1

    return v1

    :sswitch_e2
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_103

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ResultReceiver;

    :goto_fe
    invoke-virtual {p0, v7, v12}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(ILandroid/os/ResultReceiver;)V

    const/4 v1, 0x1

    return v1

    :cond_103
    const/4 v12, 0x0

    goto :goto_fe

    :sswitch_105
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_126

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ResultReceiver;

    :goto_121
    invoke-virtual {p0, v7, v12}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    const/4 v1, 0x1

    return v1

    :cond_126
    const/4 v12, 0x0

    goto :goto_121

    :sswitch_128
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_145

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_140
    invoke-virtual {p0, v10}, Lcom/android/internal/view/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v1, 0x1

    return v1

    :cond_145
    const/4 v10, 0x0

    goto :goto_140

    nop

    :sswitch_data_148
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_42
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_88
        0x6 -> :sswitch_af
        0x7 -> :sswitch_cd
        0x8 -> :sswitch_e2
        0x9 -> :sswitch_105
        0xa -> :sswitch_128
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
