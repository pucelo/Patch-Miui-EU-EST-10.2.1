.class public Lmiui/view/MiuiSecurityPermissionHandler;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiSecurityPermissionHandler$1;,
        Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LISTEN_MODE_ACCOUNT:I = 0x1

.field private static final LISTEN_MODE_WIFI:I = 0x2

.field private static final NETWORK_ERROR:I = -0x2

.field private static final PERMISSION_ACCOUNT_WHITELIST:I = 0x1

.field private static final PERMISSION_ERROR:I = -0x1

.field private static final PERMISSION_IMEIACCOUNT_WHITELIST:I = 0x3

.field private static final PERMISSION_IMEI_WHITELIST:I = 0x2

.field private static final POST_VERIFICATION_REQUEST:I = 0x0

.field private static final POST_VERIFICATION_WATER_MARKER:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final WATERMARKER_ACCOUNT_WHITELIST:I = 0x1

.field private static final WATERMARKER_IMEI_ACCOUNT_WHITELIST:I = 0x3

.field private static final WATERMARKER_IMEI_WHITELIST:I = 0x2

.field private static final WATERMARKER_SHOW:I


# instance fields
.field private mBootComplete:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMiuiSecurityImeiFlag:I

.field private mNeedAddAccount:Z

.field private mNeedListenAccount:Z

.field private mOpenWifiOnce:Z

.field private mPermissionListenAccount:Z

.field private mPermissionView:Landroid/view/View;

.field private mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

.field private final mPermissionViewLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetPermission:I

.field private mRetWater:I

.field private responseResult:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return v0
.end method

.method static synthetic -get10(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .registers 2

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return v0
.end method

.method static synthetic -get2(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return v0
.end method

.method static synthetic -get5(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return v0
.end method

.method static synthetic -get6(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/view/MiuiSecurityPermissionHandler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .registers 2

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    return v0
.end method

.method static synthetic -set0(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return p1
.end method

.method static synthetic -set3(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set4(Lmiui/view/MiuiSecurityPermissionHandler;I)I
    .registers 2

    iput p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return p1
.end method

.method static synthetic -wrap0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;
    .registers 2

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->enableWifiAndData()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->onOpenWifiSettingsButtonClicked()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "MiuiPermission"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .registers 5

    const/4 v1, -0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedListenAccount:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewLock:Ljava/lang/Object;

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiSecurityPermissionHandler$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;)V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_2f

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_38

    :cond_2f
    invoke-virtual {p0, p2}, Lmiui/view/MiuiSecurityPermissionHandler;->registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->registerNetWReceiver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->mayBringUpPermissionView()V

    :cond_38
    return-void
.end method

.method private appendImei(Ljava/io/OutputStreamWriter;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    return-void

    :cond_14
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_2e

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2e
    if-eqz v1, :cond_47

    :try_start_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&imei1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_47
    if-eqz v2, :cond_60

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&imei2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    return-void

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60
.end method

.method private decryptData(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string/jumbo v3, "ODQ4NWFmYjdhNGE="

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->generateRawKey(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_f
    const-string/jumbo v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v6, "0102030405060708"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_35

    return-object v6

    :catch_35
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    return-object v6
.end method

.method private doPermissionView()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_49

    const/4 v2, 0x1

    :goto_11
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_account_login_check"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v1, 0x1

    :goto_21
    if-nez v2, :cond_4d

    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_48
    return-void

    :cond_49
    const/4 v2, 0x0

    goto :goto_11

    :cond_4b
    const/4 v1, 0x0

    goto :goto_21

    :cond_4d
    if-eqz v1, :cond_50

    return-void

    :cond_50
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_48
.end method

.method private doWaterMarker()V
    .registers 9

    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "miui_permission_check"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    iget v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_19

    return-void

    :cond_19
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_65

    move-object v3, v4

    :goto_20
    invoke-direct {p0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    iget v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-eq v3, v7, :cond_2e

    iget v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-nez v3, :cond_64

    :cond_2e
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_68

    const/4 v2, 0x1

    :goto_3e
    if-nez v2, :cond_6a

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {v3, p0, v4, v1, v0}, Lmiui/view/MiuiSecurityPermissionHandler$2;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Landroid/accounts/Account;)V

    iput-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_20

    :cond_68
    const/4 v2, 0x0

    goto :goto_3e

    :cond_6a
    monitor-enter p0

    :try_start_6b
    iget v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-eq v7, v3, :cond_73

    iget v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-nez v3, :cond_78

    :cond_73
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v3}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_7a

    :cond_78
    monitor-exit p0

    goto :goto_64

    :catchall_7a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enableWifiAndData()V
    .registers 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_20
    return-void
.end method

.method private generateRawKey(Ljava/lang/String;)[B
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    array-length v3, v1

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_f

    return-object v1

    :cond_f
    array-length v3, v1

    add-int/lit8 v3, v3, 0x8

    array-length v4, v1

    rem-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    new-array v2, v3, [B

    const/4 v0, 0x0

    :goto_19
    array-length v3, v1

    if-ge v0, v3, :cond_23

    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_23
    return-object v2
.end method

.method public static hashSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v5

    :cond_8
    :try_start_8
    const-string/jumbo v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_26} :catch_28

    move-result-object v2

    return-object v2

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v5
.end method

.method private loadAccountId()Landroid/accounts/Account;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_17

    array-length v1, v0

    if-lez v1, :cond_17

    aget-object v1, v0, v3

    return-object v1

    :cond_17
    return-object v4
.end method

.method private onOpenWifiSettingsButtonClicked()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_31

    const-string/jumbo v3, "extra_show_on_finddevice_keyguard"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_31
    return-void
.end method

.method private postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p3, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_d
    .catchall {:try_start_1 .. :try_end_4} :catchall_26

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$6;

    invoke-direct {v1, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$6;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :goto_c
    return-void

    :catch_d
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    if-nez v1, :cond_1d

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v1, p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_26

    :cond_1d
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$6;

    invoke-direct {v1, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$6;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :catchall_26
    move-exception v1

    new-instance v2, Lmiui/view/MiuiSecurityPermissionHandler$6;

    invoke-direct {v2, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$6;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method

.method private postVerificationResult(Ljava/lang/String;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string/jumbo v16, "ro.product.mod_device"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_14

    sget-object v9, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :cond_14
    const/16 v12, 0x1388

    :try_start_16
    new-instance v13, Ljava/net/URL;

    const-string/jumbo v16, "https://update.miui.com/updates/mi-vip.php"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v16, "POST"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_56} :catch_17b
    .catchall {:try_start_16 .. :try_end_56} :catchall_17d

    :try_start_56
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "uid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "&sid=1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "&device="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object v16, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&sid=1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&device="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lmiui/view/MiuiSecurityPermissionHandler;->appendImei(Ljava/io/OutputStreamWriter;)V

    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_c1} :catch_1a3
    .catchall {:try_start_56 .. :try_end_c1} :catchall_19d

    const/4 v14, 0x0

    :try_start_c2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_121

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d9} :catch_17b
    .catchall {:try_start_c2 .. :try_end_d9} :catchall_17d

    const/16 v8, 0x1000

    const/16 v16, 0x1000

    :try_start_dd
    move/from16 v0, v16

    new-array v2, v0, [C

    const/4 v7, 0x0

    :goto_e2
    rsub-int v0, v7, 0x1000

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v2, v7, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_f4

    add-int/2addr v7, v3

    goto :goto_e2

    :cond_f4
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_f7} :catch_1a6
    .catchall {:try_start_dd .. :try_end_f7} :catchall_1a0

    const/4 v10, 0x0

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_12e

    :try_start_100
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v2, v1, v7}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->processWatermarResult(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_121} :catch_17b
    .catchall {:try_start_100 .. :try_end_121} :catchall_17d

    :cond_121
    :goto_121
    const/16 v16, 0x0

    if-eqz v16, :cond_128

    :try_start_125
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_18e

    :cond_128
    :goto_128
    if-eqz v4, :cond_12d

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12d
    return-void

    :cond_12e
    if-nez p2, :cond_121

    :try_start_130
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v2, v1, v7}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->processResult(Ljava/lang/String;)V

    sget-object v16, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mRetPermission:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "mRetWater "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_17a} :catch_17b
    .catchall {:try_start_130 .. :try_end_17a} :catchall_17d

    goto :goto_121

    :catch_17b
    move-exception v6

    :goto_17c
    :try_start_17c
    throw v6
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17d

    :catchall_17d
    move-exception v16

    :goto_17e
    if-eqz v14, :cond_183

    :try_start_180
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_193

    :cond_183
    :goto_183
    if-eqz v10, :cond_188

    :try_start_185
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_198

    :cond_188
    :goto_188
    if-eqz v4, :cond_18d

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18d
    throw v16

    :catch_18e
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_128

    :catch_193
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_183

    :catch_198
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_188

    :catchall_19d
    move-exception v16

    move-object v14, v15

    goto :goto_17e

    :catchall_1a0
    move-exception v16

    move-object v10, v11

    goto :goto_17e

    :catch_1a3
    move-exception v6

    move-object v14, v15

    goto :goto_17c

    :catch_1a6
    move-exception v6

    move-object v10, v11

    goto :goto_17c
.end method

.method private postVerificationWaterMarker(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    :goto_4
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private processMiuiSecurityImeiFlag(II)V
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x3

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    if-eq v0, v1, :cond_28

    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_10

    :cond_a
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    :cond_10
    if-eq p2, v2, :cond_14

    if-ne p2, v1, :cond_1a

    :cond_14
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    :cond_1a
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_permission_check"

    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_28
    return-void
.end method

.method private processResult(Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-object v4, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Auth"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "Watermark"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    iput v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    invoke-direct {p0, v0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private processWatermarResult(Ljava/lang/String;)I
    .registers 9

    :try_start_0
    sget-object v4, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Auth"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "Watermark"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return v3

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, -0x2

    return v4
.end method

.method private registerNetWReceiver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateWaterMarkerAccount()V
    .registers 3

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$8;

    invoke-direct {v1, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$8;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Lmiui/view/MiuiSecurityPermissionHandler$8;->start()V

    return-void
.end method


# virtual methods
.method public createPermissionView()V
    .registers 11

    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_permission_check"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    sget-object v1, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createPermissionView!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2d
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    if-nez v1, :cond_55

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const v2, 0x1103001a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    const v4, 0x5020500

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string/jumbo v1, "Permission"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_55
    .catchall {:try_start_2d .. :try_end_55} :catchall_7d

    :cond_55
    monitor-exit v9

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v2, 0x110c0020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v2, 0x110c004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$4;

    invoke-direct {v1, p0, v6}, Lmiui/view/MiuiSecurityPermissionHandler$4;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$5;

    invoke-direct {v1, p0, v8}, Lmiui/view/MiuiSecurityPermissionHandler$5;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_7d
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public handleAccountLogin()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    packed-switch v0, :pswitch_data_2e

    :goto_b
    :pswitch_b
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    packed-switch v0, :pswitch_data_3e

    :cond_14
    :goto_14
    :pswitch_14
    return-void

    :pswitch_15
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_b

    :pswitch_19
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_b

    :pswitch_1d
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_b

    :pswitch_21
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_14

    :pswitch_25
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_14

    :pswitch_29
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_14

    nop

    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_1d
        :pswitch_b
        :pswitch_19
        :pswitch_15
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_3e
    .packed-switch -0x2
        :pswitch_29
        :pswitch_25
        :pswitch_14
        :pswitch_21
    .end packed-switch
.end method

.method public handleAccountLogout()V
    .registers 7

    const/4 v5, 0x1

    sget-boolean v2, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v2, :cond_2a

    sget-object v2, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAccountLogout mRetPermission:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_22
    invoke-direct {p0, v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_2b

    :goto_25
    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    packed-switch v2, :pswitch_data_42

    :cond_2a
    :goto_2a
    :pswitch_2a
    return-void

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    :pswitch_30
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v2, v5}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_2a

    :pswitch_36
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v2, v5}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_2a

    :pswitch_3c
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v2, v5}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_2a

    :pswitch_data_42
    .packed-switch -0x2
        :pswitch_3c
        :pswitch_36
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

.method public handleWifiSettingFinish()V
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_15

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleWifiSettingFinish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_15
    return-void
.end method

.method public mayBringUpPermissionView()V
    .registers 2

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doPermissionView()V

    goto :goto_b
.end method

.method public registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-void
.end method
