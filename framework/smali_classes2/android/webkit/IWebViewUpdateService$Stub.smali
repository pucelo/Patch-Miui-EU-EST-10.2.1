.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final TRANSACTION_changeProviderAndSetting:I = 0x3

.field static final TRANSACTION_enableFallbackLogic:I = 0x9

.field static final TRANSACTION_enableMultiProcess:I = 0xb

.field static final TRANSACTION_getAllWebViewPackages:I = 0x5

.field static final TRANSACTION_getCurrentWebViewPackage:I = 0x7

.field static final TRANSACTION_getCurrentWebViewPackageName:I = 0x6

.field static final TRANSACTION_getValidWebViewPackages:I = 0x4

.field static final TRANSACTION_isFallbackPackage:I = 0x8

.field static final TRANSACTION_isMultiProcessEnabled:I = 0xa

.field static final TRANSACTION_notifyRelroCreationCompleted:I = 0x1

.field static final TRANSACTION_waitForAndGetProvider:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.webkit.IWebViewUpdateService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/webkit/IWebViewUpdateService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_f2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_a
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_11
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_1e
    const-string/jumbo v9, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_34

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v8}, Landroid/webkit/WebViewProviderResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    return v8

    :cond_34
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :sswitch_38
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_4d
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v8

    :sswitch_5e
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v8

    :sswitch_6f
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_80
    const-string/jumbo v9, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_96

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v8}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_95
    return v8

    :cond_96
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_95

    :sswitch_9a
    const-string/jumbo v9, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_ae

    move v7, v8

    :cond_ae
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_b2
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c6

    const/4 v1, 0x1

    :goto_bf
    invoke-virtual {p0, v1}, Landroid/webkit/IWebViewUpdateService$Stub;->enableFallbackLogic(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_c6
    const/4 v1, 0x0

    goto :goto_bf

    :sswitch_c8
    const-string/jumbo v9, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->isMultiProcessEnabled()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_d8

    move v7, v8

    :cond_d8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_dc
    const-string/jumbo v7, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f0

    const/4 v1, 0x1

    :goto_e9
    invoke-virtual {p0, v1}, Landroid/webkit/IWebViewUpdateService$Stub;->enableMultiProcess(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_f0
    const/4 v1, 0x0

    goto :goto_e9

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_38
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_80
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_b2
        0xa -> :sswitch_c8
        0xb -> :sswitch_dc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
