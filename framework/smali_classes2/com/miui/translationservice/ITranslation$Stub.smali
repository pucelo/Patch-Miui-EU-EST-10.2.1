.class public abstract Lcom/miui/translationservice/ITranslation$Stub;
.super Landroid/os/Binder;
.source "ITranslation.java"

# interfaces
.implements Lcom/miui/translationservice/ITranslation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/ITranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/ITranslation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.translationservice.ITranslation"

.field static final TRANSACTION_translate:I = 0x1

.field static final TRANSACTION_translateByEngine:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p0, p0, v0}, Lcom/miui/translationservice/ITranslation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.translationservice.ITranslation"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/translationservice/ITranslation;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/translationservice/ITranslation;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/translationservice/ITranslation$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/translationservice/ITranslation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_64

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v3, v11}, Lcom/miui/translationservice/ITranslation$Stub;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    const/4 v0, 0x1

    return v0

    :sswitch_2f
    const-string/jumbo v0, "com.miui.translationservice.ITranslation"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    const/4 v1, 0x1

    :goto_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslationRemoteCallback;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/translationservice/ITranslation$Stub;->translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    const/4 v0, 0x1

    return v0

    :cond_62
    const/4 v1, 0x0

    goto :goto_3c

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
