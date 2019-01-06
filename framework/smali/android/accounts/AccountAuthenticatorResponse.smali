.class public Landroid/accounts/AccountAuthenticatorResponse;
.super Ljava/lang/Object;
.source "AccountAuthenticatorResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountAuthenticatorResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accounts/AccountAuthenticatorResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AccountAuthenticator"


# instance fields
.field private mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/accounts/AccountAuthenticatorResponse$1;

    invoke-direct {v0}, Landroid/accounts/AccountAuthenticatorResponse$1;-><init>()V

    sput-object v0, Landroid/accounts/AccountAuthenticatorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/IAccountAuthenticatorResponse;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 7

    const-string/jumbo v1, "AccountAuthenticator"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AccountAuthenticatorResponse.onError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :try_start_2f
    iget-object v1, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method public onRequestContinued()V
    .registers 4

    const-string/jumbo v1, "AccountAuthenticator"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "AccountAuthenticator"

    const-string/jumbo v2, "AccountAuthenticatorResponse.onRequestContinued"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onRequestContinued()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v1, "AccountAuthenticator"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    const-string/jumbo v1, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AccountAuthenticatorResponse.onResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :try_start_2b
    iget-object v1, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v1, p1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    goto :goto_30
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/accounts/AccountAuthenticatorResponse;->mAccountAuthenticatorResponse:Landroid/accounts/IAccountAuthenticatorResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountAuthenticatorResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
