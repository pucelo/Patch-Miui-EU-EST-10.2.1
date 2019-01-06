.class public abstract Lcom/android/internal/textservice/ITextServicesManager$Stub;
.super Landroid/os/Binder;
.source "ITextServicesManager.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ITextServicesManager"

.field static final TRANSACTION_finishSpellCheckerService:I = 0x4

.field static final TRANSACTION_getCurrentSpellChecker:I = 0x1

.field static final TRANSACTION_getCurrentSpellCheckerSubtype:I = 0x2

.field static final TRANSACTION_getEnabledSpellCheckers:I = 0x6

.field static final TRANSACTION_getSpellCheckerService:I = 0x3

.field static final TRANSACTION_isSpellCheckerEnabled:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/textservice/ITextServicesManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/textservice/ITextServicesManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_ce

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/view/textservice/SpellCheckerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2b
    const/4 v0, 0x1

    return v0

    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    :sswitch_32
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    const/4 v7, 0x1

    :goto_43
    invoke-virtual {p0, v1, v7}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_58

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/view/textservice/SpellCheckerSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_54
    const/4 v0, 0x1

    return v0

    :cond_56
    const/4 v7, 0x0

    goto :goto_43

    :cond_58
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    :sswitch_5d
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_89
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0

    :cond_8f
    const/4 v5, 0x0

    goto :goto_89

    :sswitch_91
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    const/4 v0, 0x1

    return v0

    :sswitch_a4
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->isSpellCheckerEnabled()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_b9

    const/4 v0, 0x1

    :goto_b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_b9
    const/4 v0, 0x0

    goto :goto_b4

    :sswitch_bb
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v11

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    invoke-virtual {p3, v11, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v0, 0x1

    return v0

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_32
        0x3 -> :sswitch_5d
        0x4 -> :sswitch_91
        0x5 -> :sswitch_a4
        0x6 -> :sswitch_bb
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
