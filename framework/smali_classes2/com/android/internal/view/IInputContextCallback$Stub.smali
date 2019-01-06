.class public abstract Lcom/android/internal/view/IInputContextCallback$Stub;
.super Landroid/os/Binder;
.source "IInputContextCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInputContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContextCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContextCallback"

.field static final TRANSACTION_setCommitContentResult:I = 0x7

.field static final TRANSACTION_setCursorCapsMode:I = 0x3

.field static final TRANSACTION_setExtractedText:I = 0x4

.field static final TRANSACTION_setRequestUpdateCursorAnchorInfoResult:I = 0x6

.field static final TRANSACTION_setSelectedText:I = 0x5

.field static final TRANSACTION_setTextAfterCursor:I = 0x2

.field static final TRANSACTION_setTextBeforeCursor:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContextCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputContextCallback;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/view/IInputContextCallback;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_c8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    return v6

    :cond_2c
    const/4 v2, 0x0

    goto :goto_24

    :sswitch_2e
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    return v6

    :cond_4a
    const/4 v2, 0x0

    goto :goto_42

    :sswitch_4c
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setCursorCapsMode(II)V

    return v6

    :sswitch_5e
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7a

    sget-object v5, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    :goto_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    return v6

    :cond_7a
    const/4 v1, 0x0

    goto :goto_72

    :sswitch_7c
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_98

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    :goto_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setSelectedText(Ljava/lang/CharSequence;I)V

    return v6

    :cond_98
    const/4 v2, 0x0

    goto :goto_90

    :sswitch_9a
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_af

    const/4 v3, 0x1

    :goto_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    return v6

    :cond_af
    const/4 v3, 0x0

    goto :goto_a7

    :sswitch_b1
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c6

    const/4 v3, 0x1

    :goto_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setCommitContentResult(ZI)V

    return v6

    :cond_c6
    const/4 v3, 0x0

    goto :goto_be

    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_b1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
