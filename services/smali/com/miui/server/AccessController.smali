.class public Lcom/miui/server/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/AccessController$WorkHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROL:Ljava/lang/String; = "access_control.key"

.field private static final ACCESS_CONTROL_PASSWORD_TYPE_KEY:Ljava/lang/String; = "access_control_password_type.key"

.field private static final APPLOCK_WHILTE:Ljava/lang/String; = "applock_whilte"

.field public static final DEBUG:Z = false

.field private static final GAMEBOOSTER_ANTIMSG:Ljava/lang/String; = "gamebooster_antimsg"

.field private static final PASSWORD_TYPE_PATTERN:Ljava/lang/String; = "pattern"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "AccessController"

.field private static final UPDATE_EVERY_DELAY:J = 0x2932e00L

.field private static final UPDATE_FIRT_DELAY:J = 0x2bf20L

.field private static final UPDATE_WHITE_LIST:I = 0x1

.field private static final WECHAT_VIDEO_ACTIVITY_CLASSNAME:Ljava/lang/String; = "com.tencent.mm.plugin.voip.ui.VideoActivity"

.field private static mAntimsgInterceptList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPasswordToHash:Ljava/lang/reflect/Method;

.field private static mSkipList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v10, 0x1

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    sput-object v7, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    sput-object v7, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mobileqq"

    const-string/jumbo v9, "com.tencent.av.ui.VideoInviteLock"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mobileqq"

    const-string/jumbo v9, "com.tencent.av.ui.VideoInviteFull"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mm"

    const-string/jumbo v9, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mm"

    const-string/jumbo v9, "com.tencent.mm.plugin.base.stub.UIEntryStub"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mm"

    const-string/jumbo v9, "com.tencent.mm.plugin.webview.ui.tools.SDKOAuthUI"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.whatsapp"

    const-string/jumbo v9, "com.whatsapp.VoipActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "jp.naver.line.android"

    const-string/jumbo v9, "jp.naver.line.android.freecall.FreeCallActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.bbm"

    const-string/jumbo v9, "com.bbm.ui.voice.activities.IncomingCallActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.xiaomi.channel"

    const-string/jumbo v9, "com.xiaomi.channel.voip.VoipCallActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.facebook.orca"

    const-string/jumbo v9, "com.facebook.rtc.activities.WebrtcIncallActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.bsb.hike"

    const-string/jumbo v9, "com.bsb.hike.voip.view.VoIPActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.eg.android.AlipayGphone"

    const-string/jumbo v9, "com.alipay.android.app.TransProcessPayActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.eg.android.AlipayGphone"

    const-string/jumbo v9, "com.alipay.mobile.security.login.ui.AlipayUserLoginActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.eg.android.AlipayGphone"

    const-string/jumbo v9, "com.alipay.mobile.bill.detail.ui.EmptyActivity_"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.xiaomi.smarthome"

    const-string/jumbo v9, "com.xiaomi.smarthome.miio.activity.ClientAllLockedActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.FallbackHome"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.android.mms"

    const-string/jumbo v9, "com.android.mms.ui.DummyActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_106
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_145

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    sget-object v7, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_12c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v8, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    :cond_145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mobileqq"

    const-string/jumbo v9, "com.tencent.av.ui.VideoInviteLock"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mobileqq"

    const-string/jumbo v9, "com.tencent.av.ui.VideoInviteFull"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "com.tencent.mm"

    const-string/jumbo v9, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_178
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    sget-object v7, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_19e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v8, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_178

    :cond_1b7
    :try_start_1b7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1dc

    const-class v7, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v8, "legacyPasswordToHash"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    :goto_1d5
    sget-object v7, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_1db
    return-void

    :cond_1dc
    const-class v7, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v8, "passwordToHash"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1f4} :catch_1f5

    goto :goto_1d5

    :catch_1f5
    move-exception v0

    const-string/jumbo v7, "AccessController"

    const-string/jumbo v8, " passwordToHash static invoke error"

    invoke-static {v7, v8, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1db
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/server/AccessController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/server/AccessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/miui/server/AccessController$WorkHandler;

    invoke-direct {v0, p0, p2}, Lcom/miui/server/AccessController$WorkHandler;-><init>(Lcom/miui/server/AccessController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    iget-object v0, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/AccessController$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private checkAccessControlPattern(Ljava/lang/String;I)Z
    .registers 8

    if-nez p1, :cond_4

    const/4 v4, 0x0

    return v4

    :cond_4
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    const-string/jumbo v4, "access_control.key"

    invoke-direct {p0, p2, v4}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/AccessController;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    return v4
.end method

.method private getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_30
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private haveAccessControlPasswordType(I)Z
    .registers 10

    const/4 v2, 0x0

    const-string/jumbo v3, "access_control_password_type.key"

    invoke-direct {p0, p1, v3}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_23

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_21

    const/4 v2, 0x1

    :cond_21
    monitor-exit v3

    return v2

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private haveAccessControlPattern(I)Z
    .registers 10

    const/4 v2, 0x0

    const-string/jumbo v3, "access_control.key"

    invoke-direct {p0, p1, v3}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_23

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_21

    const/4 v2, 0x1

    :cond_21
    monitor-exit v3

    return v2

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private passwordToHash(Ljava/lang/String;I)[B
    .registers 11

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v7

    :cond_8
    :try_start_8
    sget-object v2, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/server/AccessController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2e

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    return-object v2

    :cond_2e
    check-cast v1, [B
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31

    return-object v1

    :catch_31
    move-exception v0

    const-string/jumbo v2, "AccessController"

    const-string/jumbo v3, " passwordToHash invoke error"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    return-object v7
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 11

    iget-object v5, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_44
    .catchall {:try_start_5 .. :try_end_d} :catchall_83

    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v3, v4, [B

    array-length v4, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_a9
    .catchall {:try_start_d .. :try_end_1c} :catchall_a6

    if-eqz v2, :cond_21

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24
    .catchall {:try_start_1e .. :try_end_21} :catchall_40

    :cond_21
    :goto_21
    move-object v1, v2

    :cond_22
    :goto_22
    monitor-exit v5

    return-object v3

    :catch_24
    move-exception v0

    :try_start_25
    const-string/jumbo v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_40

    goto :goto_21

    :catchall_40
    move-exception v4

    move-object v1, v2

    :goto_42
    monitor-exit v5

    throw v4

    :catch_44
    move-exception v0

    :goto_45
    :try_start_45
    const-string/jumbo v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_83

    if-eqz v1, :cond_22

    :try_start_61
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_81

    goto :goto_22

    :catch_65
    move-exception v0

    :try_start_66
    const-string/jumbo v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_81

    goto :goto_22

    :catchall_81
    move-exception v4

    goto :goto_42

    :catchall_83
    move-exception v4

    :goto_84
    if-eqz v1, :cond_89

    :try_start_86
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_81

    :cond_89
    :goto_89
    :try_start_89
    throw v4

    :catch_8a
    move-exception v0

    const-string/jumbo v6, "AccessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error closing file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_89 .. :try_end_a5} :catchall_81

    goto :goto_89

    :catchall_a6
    move-exception v4

    move-object v1, v2

    goto :goto_84

    :catch_a9
    move-exception v0

    move-object v1, v2

    goto :goto_45
.end method

.method private readTypeFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    iget-object v5, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_3c
    .catchall {:try_start_5 .. :try_end_d} :catchall_7b

    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_a1
    .catchall {:try_start_d .. :try_end_14} :catchall_9e

    if-eqz v2, :cond_19

    :try_start_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_38

    :cond_19
    :goto_19
    move-object v1, v2

    :cond_1a
    :goto_1a
    monitor-exit v5

    return-object v3

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string/jumbo v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_38

    goto :goto_19

    :catchall_38
    move-exception v4

    move-object v1, v2

    :goto_3a
    monitor-exit v5

    throw v4

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    const-string/jumbo v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_7b

    if-eqz v1, :cond_1a

    :try_start_59
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_79

    goto :goto_1a

    :catch_5d
    move-exception v0

    :try_start_5e
    const-string/jumbo v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_79

    goto :goto_1a

    :catchall_79
    move-exception v4

    goto :goto_3a

    :catchall_7b
    move-exception v4

    :goto_7c
    if-eqz v1, :cond_81

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82
    .catchall {:try_start_7e .. :try_end_81} :catchall_79

    :cond_81
    :goto_81
    :try_start_81
    throw v4

    :catch_82
    move-exception v0

    const-string/jumbo v6, "AccessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error closing file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_79

    goto :goto_81

    :catchall_9e
    move-exception v4

    move-object v1, v2

    goto :goto_7c

    :catch_a1
    move-exception v0

    move-object v1, v2

    goto :goto_3d
.end method

.method private setAccessControlPasswordType(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v1, "access_control_password_type.key"

    invoke-direct {p0, p2, v1}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/server/AccessController;->writeTypeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAccessControlPattern(Ljava/lang/String;I)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    :cond_b
    const-string/jumbo v3, "access_control.key"

    invoke-direct {p0, p2, v3}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/miui/server/AccessController;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method private updateWhiteList(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "pkg"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "cls"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "act"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6a

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_50
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_61

    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v10, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_65

    goto :goto_12

    :catch_65
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    :try_start_6a
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v10, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_50

    :cond_73
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_69

    monitor-enter p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7a} :catch_65

    :try_start_7a
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_82

    :try_start_80
    monitor-exit p0

    goto :goto_69

    :catchall_82
    move-exception v11

    monitor-exit p0

    throw v11
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_65
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 11

    iget-object v4, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_43
    .catchall {:try_start_4 .. :try_end_c} :catchall_82

    const-wide/16 v6, 0x0

    :try_start_e
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    if-eqz p2, :cond_18

    array-length v3, p2

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_18
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_a8
    .catchall {:try_start_e .. :try_end_1b} :catchall_a5

    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_23
    .catchall {:try_start_1d .. :try_end_20} :catchall_3f

    :cond_20
    :goto_20
    move-object v1, v2

    :cond_21
    :goto_21
    monitor-exit v4

    return-void

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3f

    goto :goto_20

    :catchall_3f
    move-exception v3

    move-object v1, v2

    :goto_41
    monitor-exit v4

    throw v3

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    const-string/jumbo v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_82

    if-eqz v1, :cond_21

    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_80

    goto :goto_21

    :catch_64
    move-exception v0

    :try_start_65
    const-string/jumbo v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_80

    goto :goto_21

    :catchall_80
    move-exception v3

    goto :goto_41

    :catchall_82
    move-exception v3

    :goto_83
    if-eqz v1, :cond_88

    :try_start_85
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_80

    :cond_88
    :goto_88
    :try_start_88
    throw v3

    :catch_89
    move-exception v0

    const-string/jumbo v5, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_88 .. :try_end_a4} :catchall_80

    goto :goto_88

    :catchall_a5
    move-exception v3

    move-object v1, v2

    goto :goto_83

    :catch_a8
    move-exception v0

    move-object v1, v2

    goto :goto_44
.end method

.method private writeTypeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v4, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_41
    .catchall {:try_start_4 .. :try_end_c} :catchall_80

    const-wide/16 v6, 0x0

    :try_start_e
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    if-eqz p2, :cond_16

    invoke-virtual {v2, p2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_a6
    .catchall {:try_start_e .. :try_end_19} :catchall_a3

    if-eqz v2, :cond_1e

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3d

    :cond_1e
    :goto_1e
    move-object v1, v2

    :cond_1f
    :goto_1f
    monitor-exit v4

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    const-string/jumbo v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing type file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_3d

    goto :goto_1e

    :catchall_3d
    move-exception v3

    move-object v1, v2

    :goto_3f
    monitor-exit v4

    throw v3

    :catch_41
    move-exception v0

    :goto_42
    :try_start_42
    const-string/jumbo v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing type to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_80

    if-eqz v1, :cond_1f

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_7e

    goto :goto_1f

    :catch_62
    move-exception v0

    :try_start_63
    const-string/jumbo v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing type file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_7e

    goto :goto_1f

    :catchall_7e
    move-exception v3

    goto :goto_3f

    :catchall_80
    move-exception v3

    :goto_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87
    .catchall {:try_start_83 .. :try_end_86} :catchall_7e

    :cond_86
    :goto_86
    :try_start_86
    throw v3

    :catch_87
    move-exception v0

    const-string/jumbo v5, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing type file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_86 .. :try_end_a2} :catchall_7e

    goto :goto_86

    :catchall_a3
    move-exception v3

    move-object v1, v2

    goto :goto_81

    :catch_a6
    move-exception v0

    move-object v1, v2

    goto :goto_42
.end method


# virtual methods
.method checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v3, 0x0

    return v3

    :cond_6
    const-string/jumbo v3, "pattern"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->checkAccessControlPattern(Ljava/lang/String;I)Z

    move-result v3

    return v3

    :cond_14
    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    const-string/jumbo v3, "access_control.key"

    invoke-direct {p0, p3, v3}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/AccessController;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3
.end method

.method public filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p3, :cond_5

    return v10

    :cond_5
    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_8
    sget-object v8, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_a8

    :goto_10
    if-nez v7, :cond_1d

    monitor-exit p0

    return v10

    :cond_14
    :try_start_14
    sget-object v8, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    goto :goto_10

    :cond_1d
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v0, :cond_43

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_a8

    move-result v8

    if-eqz v8, :cond_2b

    monitor-exit p0

    return v11

    :cond_43
    if-eqz v3, :cond_a6

    :try_start_45
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_a8

    move-result-object v2

    if-nez v2, :cond_4d

    monitor-exit p0

    return v10

    :cond_4d
    const/4 v8, 0x0

    :try_start_4e
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_82

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6b
    if-nez p1, :cond_84

    const-string/jumbo v8, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I
    :try_end_79
    .catchall {:try_start_4e .. :try_end_79} :catchall_a8

    move-result v8

    const v9, -0x10000001

    and-int/2addr v8, v9

    if-nez v8, :cond_84

    monitor-exit p0

    return v10

    :cond_82
    move-object v4, v2

    goto :goto_6b

    :cond_84
    :try_start_84
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_88
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_a8

    move-result v8

    if-eqz v8, :cond_88

    monitor-exit p0

    return v11

    :cond_a6
    monitor-exit p0

    return v10

    :catchall_a8
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method getAccessControlPasswordType(I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "access_control_password_type.key"

    invoke-direct {p0, p1, v1}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string/jumbo v1, "pattern"

    return-object v1

    :cond_d
    invoke-direct {p0, v0}, Lcom/miui/server/AccessController;->readTypeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method haveAccessControlPassword(I)Z
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "access_control_password_type.key"

    invoke-direct {p0, p1, v5}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "access_control.key"

    invoke-direct {p0, p1, v5}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_14
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_3d

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_3b

    const/4 v4, 0x1

    :cond_3b
    monitor-exit v5

    return v4

    :catchall_3d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v2, "pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->setAccessControlPattern(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p3}, Lcom/miui/server/AccessController;->setAccessControlPasswordType(Ljava/lang/String;I)V

    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x0

    if-eqz p2, :cond_17

    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    :cond_17
    const-string/jumbo v2, "access_control.key"

    invoke-direct {p0, p3, v2}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/miui/server/AccessController;->writeFile(Ljava/lang/String;[B)V

    invoke-direct {p0, p1, p3}, Lcom/miui/server/AccessController;->setAccessControlPasswordType(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public skipActivity(Landroid/content/Intent;)Z
    .registers 10

    const/4 v4, 0x0

    if-eqz p1, :cond_55

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_55

    const-string/jumbo v5, "com.miui.gallery"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string/jumbo v5, "com.miui.gallery.activity.ExternalPhotoPageActivity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string/jumbo v5, "skip_interception"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_3a

    move-result v4

    :cond_39
    return v4

    :catch_3a
    move-exception v2

    const-string/jumbo v5, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not getStringExtra"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return v4
.end method

.method updatePasswordTypeForPattern(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPattern(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPasswordType(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "pattern"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/AccessController;->setAccessControlPasswordType(Ljava/lang/String;I)V

    const-string/jumbo v0, "AccessController"

    const-string/jumbo v1, "update password type succeed"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public updateWhiteList()V
    .registers 9

    :try_start_0
    iget-object v4, p0, Lcom/miui/server/AccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/server/AccessController$WorkHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const/4 v5, 0x1

    const-wide/32 v6, 0x2932e00

    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/server/AccessController$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v4, "applock_whilte"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v4, "gamebooster_antimsg"

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v4}, Lcom/miui/server/AccessController;->updateWhiteList(Ljava/util/List;Landroid/util/ArrayMap;)V

    sget-object v4, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4}, Lcom/miui/server/AccessController;->updateWhiteList(Ljava/util/List;Landroid/util/ArrayMap;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method
