.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$1;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$OnTagRemovedListener;,
        Landroid/nfc/NfcAdapter$ReaderCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_READER_PRESENCE_CHECK_DELAY:Ljava/lang/String; = "presence"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final FLAG_NDEF_PUSH_NO_CONFIRM:I = 0x1

.field public static final FLAG_READER_NFC_A:I = 0x1

.field public static final FLAG_READER_NFC_B:I = 0x2

.field public static final FLAG_READER_NFC_BARCODE:I = 0x10

.field public static final FLAG_READER_NFC_F:I = 0x4

.field public static final FLAG_READER_NFC_V:I = 0x8

.field public static final FLAG_READER_NO_PLATFORM_SOUNDS:I = 0x100

.field public static final FLAG_READER_SKIP_NDEF_CHECK:I = 0x80

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "NFC"

.field static sCardEmulationService:Landroid/nfc/INfcCardEmulation;

.field static sHasNfcFeature:Z

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

.field static sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sService:Landroid/nfc/INfcAdapter;

.field static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final mContext:Landroid/content/Context;

.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final mLock:Ljava/lang/Object;

.field final mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field final mNfcUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/NfcAdapter$NfcUnlockHandler;",
            "Landroid/nfc/INfcUnlockHandler;",
            ">;"
        }
    .end annotation
.end field

.field mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context not associated with any application (using a mock context?)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const-string/jumbo v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    if-nez v0, :cond_27

    return-object v2

    :cond_27
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 7

    const-class v4, Landroid/nfc/NfcAdapter;

    monitor-enter v4

    :try_start_3
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v3, :cond_65

    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v3

    sput-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcHceFeature()Z

    move-result v2

    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v3, :cond_2b

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "NFC"

    const-string/jumbo v5, "this device does not have NFC support"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v3, :cond_44

    const-string/jumbo v3, "NFC"

    const-string/jumbo v5, "could not retrieve NFC service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :cond_44
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_28

    if-eqz v3, :cond_50

    :try_start_48
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_50} :catch_77
    .catchall {:try_start_48 .. :try_end_50} :catchall_28

    :cond_50
    if-eqz v2, :cond_62

    :try_start_52
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5a} :catch_87
    .catchall {:try_start_52 .. :try_end_5a} :catchall_28

    :try_start_5a
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v3

    sput-object v3, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_62} :catch_97
    .catchall {:try_start_5a .. :try_end_62} :catchall_28

    :cond_62
    const/4 v3, 0x1

    :try_start_63
    sput-boolean v3, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    :cond_65
    if-nez p0, :cond_a7

    sget-object v3, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_73

    new-instance v3, Landroid/nfc/NfcAdapter;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_73
    sget-object v3, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_75
    .catchall {:try_start_63 .. :try_end_75} :catchall_28

    monitor-exit v4

    return-object v3

    :catch_77
    move-exception v1

    :try_start_78
    const-string/jumbo v3, "NFC"

    const-string/jumbo v5, "could not retrieve NFC Tag service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :catch_87
    move-exception v1

    const-string/jumbo v3, "NFC"

    const-string/jumbo v5, "could not retrieve NFC-F card emulation service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :catch_97
    move-exception v1

    const-string/jumbo v3, "NFC"

    const-string/jumbo v5, "could not retrieve card emulation service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :cond_a7
    sget-object v3, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_bb

    new-instance v0, Landroid/nfc/NfcAdapter;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bb
    .catchall {:try_start_78 .. :try_end_bb} :catchall_28

    :cond_bb
    monitor-exit v4

    return-object v0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .registers 3

    const/4 v2, 0x0

    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v2

    :cond_b
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static hasNfcFeature()Z
    .registers 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-nez v1, :cond_11

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_11
    :try_start_11
    const-string/jumbo v2, "android.hardware.nfc"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v2

    return v2

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private static hasNfcHceFeature()Z
    .registers 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-nez v1, :cond_11

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_11
    :try_start_11
    const-string/jumbo v2, "android.hardware.nfc.hce"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "android.hardware.nfc.hcef"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_26

    move-result v2

    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x1

    goto :goto_23

    :catch_26
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "Package manager query failed, assuming no NFC feature"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method


# virtual methods
.method public addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x0

    const-class v4, Landroid/nfc/NfcAdapter;

    monitor-enter v4

    :try_start_4
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v3, :cond_11

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_11
    monitor-exit v4

    array-length v3, p2

    if-nez v3, :cond_16

    return v6

    :cond_16
    :try_start_16
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_51

    :try_start_19
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v5, v3}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    new-instance v2, Landroid/nfc/NfcAdapter$3;

    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    move-result-object v5

    invoke-interface {v3, v2, v5}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_49

    :try_start_46
    monitor-exit v4

    const/4 v3, 0x1

    return v3

    :catchall_49
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4c} :catch_51

    :catch_4c
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return v6

    :catch_51
    move-exception v1

    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Unable to register LockscreenDispatch"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 6

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    if-nez v1, :cond_19

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    :try_start_1b
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_2e

    :try_start_21
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_27} :catch_39

    :goto_27
    :try_start_27
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_44

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC card emulation service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_44
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "could not retrieve NFC-F card emulation service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public disable()Z
    .registers 4

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    return v1

    :catch_8
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public disable(Z)Z
    .registers 4

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .registers 4

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .registers 8

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    if-nez p2, :cond_1f

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :cond_1f
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_5
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_12
    monitor-exit v1

    if-nez p1, :cond_1b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1b
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v2, v3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v2, v3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v2}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    return-void
.end method

.method public disableNdefPush()Z
    .registers 4

    const-class v2, Landroid/nfc/NfcAdapter;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_10
    monitor-exit v2

    :try_start_11
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    return v1

    :catch_18
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .registers 4

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    return-void
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :try_start_b
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public enable()Z
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .registers 10

    const-class v4, Landroid/nfc/NfcAdapter;

    monitor-enter v4

    :try_start_3
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_10
    monitor-exit v4

    if-eqz p1, :cond_15

    if-nez p2, :cond_1b

    :cond_15
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1b
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2a

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2a
    const/4 v1, 0x0

    if-eqz p4, :cond_36

    :try_start_2d
    array-length v3, p4

    if-lez v3, :cond_36

    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    move-object v1, v2

    :cond_36
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_44
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    if-eqz p1, :cond_15

    if-nez p2, :cond_1b

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1b
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    return-void
.end method

.method public enableNdefPush()Z
    .registers 3

    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_a
    :try_start_a
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .registers 7

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    return-void
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public getAdapterState()I
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    return v1
.end method

.method public getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getListenTechMask()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "getListenTechMask"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getListenTechMask()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "getListenTechMask failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "getListenTechMask failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :try_start_e
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move-result-object v1

    return-object v1

    :catch_1b
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return-object v3
.end method

.method public getNfcDtaInterface()Landroid/nfc/INfcDta;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :try_start_e
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move-result-object v1

    return-object v1

    :catch_1b
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return-object v3
.end method

.method public getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    return-object v0
.end method

.method getSdkVersion()I
    .registers 2

    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    const/16 v0, 0x9

    return v0

    :cond_7
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public getSeRouting()I
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getSeRouting()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
    .registers 9

    const/4 v1, 0x0

    if-eqz p3, :cond_8

    new-instance v1, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    :cond_8
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_19

    monitor-exit v2

    :try_start_e
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3, p2, v1}, Landroid/nfc/INfcAdapter;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_1c

    move-result v2

    return v2

    :catchall_19
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_1c
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method public invokeBeam(Landroid/app/Activity;)Z
    .registers 5

    const-class v2, Landroid/nfc/NfcAdapter;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_10
    monitor-exit v2

    if-nez p1, :cond_1c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "activity may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    :try_start_1f
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_26

    const/4 v1, 0x1

    return v1

    :catch_26
    move-exception v0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "invokeBeam: NFC process has died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public invokeBeam(Landroid/nfc/BeamShareData;)Z
    .registers 5

    :try_start_0
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "invokeBeamInternal()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    const/4 v1, 0x1

    return v1

    :catch_10
    move-exception v0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "invokeBeam: NFC process has died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_c

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return v1
.end method

.method public isNdefPushEnabled()Z
    .registers 4

    const-class v2, Landroid/nfc/NfcAdapter;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_10
    monitor-exit v2

    :try_start_11
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    return v1

    :catch_18
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public pausePolling(I)V
    .registers 4

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    .registers 6

    const-class v2, Landroid/nfc/NfcAdapter;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_10
    monitor-exit v2

    :try_start_11
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_2f

    :try_start_14
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v3, v1}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2c

    :cond_29
    const/4 v1, 0x1

    :try_start_2a
    monitor-exit v2

    return v1

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public resumePolling()V
    .registers 3

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .registers 8

    const-class v3, Landroid/nfc/NfcAdapter;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_10
    monitor-exit v3

    if-nez p2, :cond_1c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    if-eqz p1, :cond_55

    const/4 v2, 0x0

    array-length v3, p1

    :goto_20
    if-ge v2, v3, :cond_55

    aget-object v1, p1, v2

    if-nez v1, :cond_2f

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Uri not allowed to be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string/jumbo v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_52

    :cond_49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_55
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v2, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    return-void
.end method

.method public setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .registers 5

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    if-nez p2, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    return-void
.end method

.method public setConfig(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setConfig(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/16 v1, 0xff

    return v1
.end method

.method public setListenTechMask(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "setListenTechMask"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setListenTechMask(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "setListenTechMask failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "setListenTechMask failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .registers 6

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    if-nez p2, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    return-void
.end method

.method public varargs setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 11

    const/4 v3, 0x0

    const-class v4, Landroid/nfc/NfcAdapter;

    monitor-enter v4

    :try_start_4
    sget-boolean v5, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v5, :cond_11

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_11
    monitor-exit v4

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v2

    if-nez p2, :cond_30

    :try_start_18
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activity cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_21} :catch_21

    :catch_21
    move-exception v1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4f

    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return-void

    :cond_30
    :try_start_30
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    array-length v4, p3

    :goto_37
    if-ge v3, v4, :cond_2f

    aget-object v0, p3, v3

    if-nez v0, :cond_46

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activities cannot contain null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_46
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_4c} :catch_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4f
    throw v1
.end method

.method public setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V
    .registers 6

    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    return-void
.end method

.method public varargs setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 11

    const/4 v3, 0x0

    const-class v4, Landroid/nfc/NfcAdapter;

    monitor-enter v4

    :try_start_4
    sget-boolean v5, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v5, :cond_11

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_11
    monitor-exit v4

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v2

    if-nez p2, :cond_30

    :try_start_18
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activity cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_21} :catch_21

    :catch_21
    move-exception v1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4f

    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return-void

    :cond_30
    :try_start_30
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p1, v5}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    array-length v4, p3

    :goto_37
    if-ge v3, v4, :cond_2f

    aget-object v0, p3, v3

    if-nez v0, :cond_46

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activities cannot contain null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_46
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_4c} :catch_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4f
    throw v1
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 10

    const-class v4, Landroid/nfc/NfcAdapter;

    monitor-enter v4

    :try_start_3
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_10
    monitor-exit v4

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v2

    if-nez p2, :cond_2f

    :try_start_17
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activity cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_20} :catch_20

    :catch_20
    move-exception v1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4d

    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    return-void

    :cond_2f
    :try_start_2f
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v3, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    const/4 v3, 0x0

    array-length v4, p3

    :goto_36
    if-ge v3, v4, :cond_2e

    aget-object v0, p3, v3

    if-nez v0, :cond_45

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "activities cannot contain null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_45
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_4a} :catch_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4d
    throw v1
.end method

.method public setP2pModes(II)V
    .registers 5

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public setSeRouting(I)Z
    .registers 4

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setSeRouting(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method
