.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;,
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final DEBUG_MULTIUSER:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_25

    const-string/jumbo v4, "SmsApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not have system signature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const/4 v4, 0x0

    :try_start_26
    invoke-virtual {p1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0xf

    invoke-virtual {p2, v5, v4, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v4, "SmsApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not have OP_WRITE_SMS:  (fixing)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v4, p3, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    const-string/jumbo v4, "SmsApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method private static assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 4

    const-string/jumbo v0, "sms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "smsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "mms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "mmsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 16

    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v9, 0x0

    return-object v9

    :cond_11
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sms_default_application"

    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_27

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    :cond_27
    if-eqz p1, :cond_52

    if-nez v1, :cond_52

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10401a2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-nez v1, :cond_4b

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v1, v9, v10

    check-cast v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    :cond_4b
    if-eqz v1, :cond_52

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v9, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    :cond_52
    if-eqz v1, :cond_db

    const-string/jumbo v9, "appops"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-nez p1, :cond_69

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    if-ne v9, v10, :cond_aa

    :cond_69
    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v9

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v11, 0xf

    invoke-virtual {v0, v11, v9, v10}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_aa

    const-string/jumbo v10, "SmsApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " lost OP_WRITE_SMS: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p1, :cond_dc

    const-string/jumbo v9, " (fixing)"

    :goto_91
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_e0

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v9

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v9, v10, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_aa
    :goto_aa
    if-eqz p1, :cond_db

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v9, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    const-string/jumbo v9, "com.android.phone"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.bluetooth"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.mms.service"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v9, "com.android.providers.telephony"

    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const/16 v9, 0x3e9

    invoke-static {v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    :cond_db
    return-object v1

    :cond_dc
    const-string/jumbo v9, " (no permission to fix)"

    goto :goto_91

    :cond_e0
    const/4 v1, 0x0

    goto :goto_aa
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_10
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v17

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_21
    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_21

    const-string/jumbo v18, "android.permission.BROADCAST_SMS"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_21

    new-instance v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set6(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_6a
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "application/vnd.wap.mms-message"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8e
    :goto_8e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8e

    const-string/jumbo v18, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8e

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_8e

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set0(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8e

    :cond_c1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string/jumbo v19, "smsto"

    const-string/jumbo v20, ""

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e7
    :goto_e7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_e7

    const-string/jumbo v18, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e7

    iget-object v6, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_e7

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set2(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_e7

    :cond_11a
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.SENDTO"

    const-string/jumbo v19, "smsto"

    const-string/jumbo v20, ""

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_140
    :goto_140
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_166

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_140

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_140

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_140

    :cond_166
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17e
    :goto_17e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_17e

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_17e

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_17e

    :cond_1a4
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1bc
    :goto_1bc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1e2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1bc

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_1bc

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1bc

    :cond_1e2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.provider.Telephony.SIM_FULL"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1fa
    :goto_1fa
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_220

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1fa

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_1fa

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-set4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1fa

    :cond_220
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_224
    :goto_224
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_248

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_224

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v16, :cond_224

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v18

    if-nez v18, :cond_224

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_224

    :cond_248
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    return-object v18
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return-object v3

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v0

    :cond_1d
    return-object v3
.end method

.method public static getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 9

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_24

    :cond_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_24
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 9

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get0(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    :cond_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1e
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 9

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get2(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    :cond_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1e
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 9

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    :cond_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1e
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 9

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_24

    :cond_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_24
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 9

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get6(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    :cond_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1e
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    return-object v2
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_11

    return v1

    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    return v2
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 4

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public static isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_10
    const-string/jumbo v1, "com.android.bluetooth"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    const/4 v1, 0x1

    return v1

    :cond_1b
    return v2
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V
    .registers 15

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SENDTO"

    const-string/jumbo v2, ""

    const/4 v4, 0x0

    invoke-static {p3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10040

    invoke-virtual {p0, v8, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    new-array v3, v9, [Landroid/content/ComponentName;

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v9, :cond_38

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_38
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const v2, 0x208000

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_18
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sms_default_application"

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz p0, :cond_1a

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    return-void

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v10, :cond_f9

    invoke-static {v3, v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    :goto_28
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    if-eqz v2, :cond_f8

    const-string/jumbo v12, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    if-eqz v10, :cond_4e

    const/4 v12, 0x0

    :try_start_3e
    move/from16 v0, p2

    invoke-virtual {v11, v10, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0xf

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v12, v10, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_4e} :catch_fc

    :cond_4e
    :goto_4e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sms_default_application"

    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move/from16 v0, p2

    invoke-static {v12, v13, v14, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v12

    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v14, 0xf

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v12, v13, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string/jumbo v12, "com.android.phone"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v12, "com.android.bluetooth"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v12, "com.android.mms.service"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string/jumbo v12, "com.android.providers.telephony"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const/16 v12, 0x3e9

    invoke-static {v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    if-eqz v8, :cond_c7

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c7

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v12, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v12, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c7
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_ef

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v12, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_ef
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v13, 0x10a

    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_f8
    return-void

    :cond_f9
    const/4 v8, 0x0

    goto/16 :goto_28

    :catch_fc
    move-exception v5

    const-string/jumbo v12, "SmsApplication"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Old SMS package not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplicationInjector;->isIgnoreSmsStorageApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
