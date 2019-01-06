.class public final Landroid/nfc/cardemulation/NfcFCardEmulation;
.super Ljava/lang/Object;
.source "NfcFCardEmulation.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcFCardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/NfcFCardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcFCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    sput-object p2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/NfcFCardEmulation;
    .registers 9

    const-class v6, Landroid/nfc/cardemulation/NfcFCardEmulation;

    monitor-enter v6

    if-nez p0, :cond_11

    :try_start_5
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NfcAdapter is null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_26

    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "NfcAdapter context is null."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_26
    sget-boolean v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    if-nez v5, :cond_6b

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    if-nez v3, :cond_3f

    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "Cannot get PackageManager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_e

    :cond_3f
    :try_start_3f
    const-string/jumbo v5, "android.hardware.nfc.hcef"

    const/4 v7, 0x0

    invoke-interface {v3, v5, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_68

    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "This device does not support NFC-F card emulation"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_58} :catch_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_e

    :catch_58
    move-exception v1

    :try_start_59
    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "PackageManager query failed."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_68
    const/4 v5, 0x1

    sput-boolean v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    :cond_6b
    sget-object v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    if-nez v2, :cond_94

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v4

    if-nez v4, :cond_8a

    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "This device does not implement the INfcFCardEmulation interface."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_8a
    new-instance v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/NfcFCardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V

    sget-object v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_59 .. :try_end_94} :catchall_e

    :cond_94
    monitor-exit v6

    return-object v2
.end method

.method public static isValidNfcid2(Ljava/lang/String;)Z
    .registers 6

    const/16 v2, 0x10

    const/4 v4, 0x0

    if-nez p0, :cond_6

    return v4

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_2e

    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid NFCID2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "02FE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid NFCID2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5d
    const/16 v1, 0x10

    :try_start_5f
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_62} :catch_64

    const/4 v1, 0x1

    return v1

    :catch_64
    move-exception v0

    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid NFCID2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static isValidSystemCode(Ljava/lang/String;)Z
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return v4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2d

    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid System Code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2d
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_43
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid System Code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_65
    const/16 v1, 0x10

    :try_start_67
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6a} :catch_6c

    const/4 v1, 0x1

    return v1

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid System Code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public disableService(Landroid/app/Activity;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    :try_start_1b
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_22

    move-result v2

    return v2

    :catch_22
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_34

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_34
    :try_start_34
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3b

    move-result v2

    return v2

    :catch_3b
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return v4
.end method

.method public enableService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_e

    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity or service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    :try_start_1d
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_24

    move-result v2

    return v2

    :catch_24
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_36

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_36
    :try_start_36
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3d

    move-result v2

    return v2

    :catch_3d
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return v4
.end method

.method public getMaxNumOfRegisterableSystemCodes()I
    .registers 6

    const/4 v4, -0x1

    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v2

    return v2

    :catch_8
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_1a

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1a
    :try_start_1a
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v2

    return v2

    :catch_21
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getNfcFServices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v2

    return-object v2

    :catch_c
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_1e

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1e
    :try_start_1e
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_29

    move-result-object v2

    return-object v2

    :catch_29
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getNfcid2ForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    :try_start_c
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v2

    return-object v2

    :catch_17
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_29

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_29
    :try_start_29
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_34

    move-result-object v2

    return-object v2

    :catch_34
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-object v4
.end method

.method public getSystemCodeForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    :try_start_c
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v2

    return-object v2

    :catch_17
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_29

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_29
    :try_start_29
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_34

    move-result-object v2

    return-object v2

    :catch_34
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-object v4
.end method

.method recoverService()V
    .registers 3

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    return-void
.end method

.method public registerSystemCodeForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_e

    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service or systemCode is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :try_start_e
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19

    move-result v2

    return v2

    :catch_19
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_2b

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2b
    :try_start_2b
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_36

    move-result v2

    return v2

    :catch_36
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return v4
.end method

.method public setNfcid2ForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_e

    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service or nfcid2 is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :try_start_e
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19

    move-result v2

    return v2

    :catch_19
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_2b

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2b
    :try_start_2b
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_36

    move-result v2

    return v2

    :catch_36
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return v4
.end method

.method public unregisterSystemCodeForService(Landroid/content/ComponentName;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    :try_start_c
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result v2

    return v2

    :catch_17
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_29

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_29
    :try_start_29
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_34

    move-result v2

    return v2

    :catch_34
    move-exception v1

    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return v4
.end method
