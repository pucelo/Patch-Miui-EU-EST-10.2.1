.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final TRANSACTION_authenticate:I = 0x3

.field static final TRANSACTION_autofill:I = 0x2

.field static final TRANSACTION_notifyNoFillUi:I = 0x7

.field static final TRANSACTION_requestHideFillUi:I = 0x6

.field static final TRANSACTION_requestShowFillUi:I = 0x5

.field static final TRANSACTION_setSaveUiState:I = 0x9

.field static final TRANSACTION_setSessionFinished:I = 0xa

.field static final TRANSACTION_setState:I = 0x1

.field static final TRANSACTION_setTrackedViews:I = 0x4

.field static final TRANSACTION_startIntentSender:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/autofill/IAutoFillManagerClient;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1e6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v12, 0x1

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    const/16 v16, 0x1

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    const/16 v20, 0x1

    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(ZZZ)V

    const/4 v4, 0x1

    return v4

    :cond_3c
    const/4 v12, 0x0

    goto :goto_21

    :cond_3e
    const/16 v16, 0x0

    goto :goto_29

    :cond_41
    const/16 v20, 0x0

    goto :goto_31

    :sswitch_44
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    sget-object v4, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v15, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_69
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a4

    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/IntentSender;

    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    :goto_99
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v13, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    const/4 v4, 0x1

    return v4

    :cond_a4
    const/16 v18, 0x0

    goto :goto_89

    :cond_a7
    const/16 v21, 0x0

    goto :goto_99

    :sswitch_aa
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/view/autofill/AutofillId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_df

    const/16 v20, 0x1

    :goto_c8
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/view/autofill/AutofillId;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    const/4 v4, 0x1

    return v4

    :cond_df
    const/16 v20, 0x0

    goto :goto_c8

    :sswitch_e2
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_125

    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    :goto_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_127

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    :goto_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    const/4 v4, 0x1

    return v4

    :cond_125
    const/4 v6, 0x0

    goto :goto_fe

    :cond_127
    const/4 v9, 0x0

    goto :goto_116

    :sswitch_129
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14c

    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    :goto_145
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    const/4 v4, 0x1

    return v4

    :cond_14c
    const/4 v6, 0x0

    goto :goto_145

    :sswitch_14e
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17b

    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    :goto_16a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17d

    const/16 v20, 0x1

    :goto_172
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V

    const/4 v4, 0x1

    return v4

    :cond_17b
    const/4 v6, 0x0

    goto :goto_16a

    :cond_17d
    const/16 v20, 0x0

    goto :goto_172

    :sswitch_180
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1af

    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentSender;

    :goto_198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b1

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    :goto_1a8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    const/4 v4, 0x1

    return v4

    :cond_1af
    const/4 v11, 0x0

    goto :goto_198

    :cond_1b1
    const/4 v14, 0x0

    goto :goto_1a8

    :sswitch_1b3
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d0

    const/16 v16, 0x1

    :goto_1c7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSaveUiState(IZ)V

    const/4 v4, 0x1

    return v4

    :cond_1d0
    const/16 v16, 0x0

    goto :goto_1c7

    :sswitch_1d3
    const-string/jumbo v4, "android.view.autofill.IAutoFillManagerClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSessionFinished(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_data_1e6
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_44
        0x3 -> :sswitch_69
        0x4 -> :sswitch_aa
        0x5 -> :sswitch_e2
        0x6 -> :sswitch_129
        0x7 -> :sswitch_14e
        0x8 -> :sswitch_180
        0x9 -> :sswitch_1b3
        0xa -> :sswitch_1d3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
