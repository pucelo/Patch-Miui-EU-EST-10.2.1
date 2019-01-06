.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final TRANSACTION_beginBatchEdit:I = 0xf

.field static final TRANSACTION_clearMetaKeyStates:I = 0x12

.field static final TRANSACTION_commitCompletion:I = 0xa

.field static final TRANSACTION_commitContent:I = 0x17

.field static final TRANSACTION_commitCorrection:I = 0xb

.field static final TRANSACTION_commitText:I = 0x9

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_deleteSurroundingTextInCodePoints:I = 0x6

.field static final TRANSACTION_endBatchEdit:I = 0x10

.field static final TRANSACTION_finishComposingText:I = 0x8

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getSelectedText:I = 0x15

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xe

.field static final TRANSACTION_performEditorAction:I = 0xd

.field static final TRANSACTION_performPrivateCommand:I = 0x13

.field static final TRANSACTION_requestUpdateCursorAnchorInfo:I = 0x16

.field static final TRANSACTION_sendKeyEvent:I = 0x11

.field static final TRANSACTION_setComposingRegion:I = 0x14

.field static final TRANSACTION_setComposingText:I = 0x7

.field static final TRANSACTION_setSelection:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.view.IInputContext"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/view/IInputContext;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2cc

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_8
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_12
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :sswitch_39
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :sswitch_60
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :sswitch_81
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b4

    sget-object v3, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/ExtractedTextRequest;

    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v13, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :cond_b4
    const/4 v13, 0x0

    goto :goto_99

    :sswitch_b6
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_cd
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingTextInCodePoints(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_e4
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_107

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    return v3

    :cond_107
    const/4 v14, 0x0

    goto :goto_fc

    :sswitch_109
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    const/4 v3, 0x1

    return v3

    :sswitch_116
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_139

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    :goto_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    return v3

    :cond_139
    const/4 v14, 0x0

    goto :goto_12e

    :sswitch_13b
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15a

    sget-object v3, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    :goto_153
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    const/4 v3, 0x1

    return v3

    :cond_15a
    const/4 v11, 0x0

    goto :goto_153

    :sswitch_15c
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17b

    sget-object v3, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/CorrectionInfo;

    :goto_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    const/4 v3, 0x1

    return v3

    :cond_17b
    const/4 v12, 0x0

    goto :goto_174

    :sswitch_17d
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_194
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_1a7
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_1ba
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    const/4 v3, 0x1

    return v3

    :sswitch_1c7
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    const/4 v3, 0x1

    return v3

    :sswitch_1d4
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f3

    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    :goto_1ec
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    const/4 v3, 0x1

    return v3

    :cond_1f3
    const/4 v10, 0x0

    goto :goto_1ec

    :sswitch_1f5
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_208
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22d

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_224
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v3, 0x1

    return v3

    :cond_22d
    const/16 v16, 0x0

    goto :goto_224

    :sswitch_230
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    const/4 v3, 0x1

    return v3

    :sswitch_247
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :sswitch_268
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :sswitch_289
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c8

    sget-object v3, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputContentInfo;

    :goto_2a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2ca

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_2b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/view/IInputContext$Stub;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V

    const/4 v3, 0x1

    return v3

    :cond_2c8
    const/4 v4, 0x0

    goto :goto_2a1

    :cond_2ca
    const/4 v6, 0x0

    goto :goto_2b5

    :sswitch_data_2cc
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_39
        0x3 -> :sswitch_60
        0x4 -> :sswitch_81
        0x5 -> :sswitch_b6
        0x6 -> :sswitch_cd
        0x7 -> :sswitch_e4
        0x8 -> :sswitch_109
        0x9 -> :sswitch_116
        0xa -> :sswitch_13b
        0xb -> :sswitch_15c
        0xc -> :sswitch_17d
        0xd -> :sswitch_194
        0xe -> :sswitch_1a7
        0xf -> :sswitch_1ba
        0x10 -> :sswitch_1c7
        0x11 -> :sswitch_1d4
        0x12 -> :sswitch_1f5
        0x13 -> :sswitch_208
        0x14 -> :sswitch_230
        0x15 -> :sswitch_247
        0x16 -> :sswitch_268
        0x17 -> :sswitch_289
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
