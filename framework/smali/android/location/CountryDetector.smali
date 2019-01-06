.class public Landroid/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/CountryDetector$ListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/CountryListener;",
            "Landroid/location/CountryDetector$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ICountryDetector;


# direct methods
.method public constructor <init>(Landroid/location/ICountryDetector;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .registers 8

    iget-object v3, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v1, Landroid/location/CountryDetector$ListenerTransport;

    invoke-direct {v1, p1, p2}, Landroid/location/CountryDetector$ListenerTransport;-><init>(Landroid/location/CountryListener;Landroid/os/Looper;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    :try_start_10
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->addCountryListener(Landroid/location/ICountryListener;)V

    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c
    .catchall {:try_start_10 .. :try_end_1a} :catchall_27

    :cond_1a
    :goto_1a
    monitor-exit v3

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string/jumbo v2, "CountryDetector"

    const-string/jumbo v4, "addCountryListener: RemoteException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_1a

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v1}, Landroid/location/ICountryDetector;->detectCountry()Landroid/location/Country;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "CountryDetector"

    const-string/jumbo v2, "detectCountry: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public removeCountryListener(Landroid/location/CountryListener;)V
    .registers 7

    iget-object v3, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector$ListenerTransport;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_24

    if-eqz v1, :cond_17

    :try_start_d
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->removeCountryListener(Landroid/location/ICountryListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_19
    .catchall {:try_start_d .. :try_end_17} :catchall_24

    :cond_17
    :goto_17
    monitor-exit v3

    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    const-string/jumbo v2, "CountryDetector"

    const-string/jumbo v4, "removeCountryListener: RemoteException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    goto :goto_17

    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method
