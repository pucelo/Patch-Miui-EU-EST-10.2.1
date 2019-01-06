.class public final Landroid/nfc/dta/NfcDta;
.super Ljava/lang/Object;
.source "NfcDta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcDta"

.field private static sNfcDtas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/dta/NfcDta;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/nfc/INfcDta;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/dta/NfcDta;->mContext:Landroid/content/Context;

    sput-object p2, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/dta/NfcDta;
    .registers 7

    const-class v4, Landroid/nfc/dta/NfcDta;

    monitor-enter v4

    if-nez p0, :cond_11

    :try_start_5
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "NfcAdapter is null"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_26

    const-string/jumbo v3, "NfcDta"

    const-string/jumbo v5, "NfcAdapter context is null."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :cond_26
    sget-object v3, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/dta/NfcDta;

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcDtaInterface()Landroid/nfc/INfcDta;

    move-result-object v2

    if-nez v2, :cond_45

    const-string/jumbo v3, "NfcDta"

    const-string/jumbo v5, "This device does not implement the INfcDta interface."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :cond_45
    new-instance v1, Landroid/nfc/dta/NfcDta;

    invoke-direct {v1, v0, v2}, Landroid/nfc/dta/NfcDta;-><init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V

    sget-object v3, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_e

    :cond_4f
    monitor-exit v4

    return-object v1
.end method


# virtual methods
.method public disableClient()Z
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v1}, Landroid/nfc/INfcDta;->disableClient()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public disableDta()Z
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v1}, Landroid/nfc/INfcDta;->disableDta()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public disableServer()Z
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v1}, Landroid/nfc/INfcDta;->disableServer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public enableClient(Ljava/lang/String;III)Z
    .registers 7

    :try_start_0
    sget-object v1, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/nfc/INfcDta;->enableClient(Ljava/lang/String;III)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public enableDta()Z
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v1}, Landroid/nfc/INfcDta;->enableDta()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public enableServer(Ljava/lang/String;IIII)Z
    .registers 13

    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcDta;->enableServer(Ljava/lang/String;IIII)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    return v0

    :catch_c
    move-exception v6

    const/4 v0, 0x0

    return v0
.end method

.method public registerMessageService(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    sget-object v1, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v1, p1}, Landroid/nfc/INfcDta;->registerMessageService(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
