.class public Lcom/miui/server/enterprise/APNManagerService;
.super Lcom/miui/enterprise/IAPNManager$Stub;
.source "APNManagerService.java"


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "APNManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/enterprise/IAPNManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private buildNameSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNameSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getNumeric()Ljava/lang/String;
    .registers 6

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    iget-object v3, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_26

    const-string/jumbo v0, ""

    :goto_17
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyConstants;->PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v3, p0, Lcom/miui/server/enterprise/APNManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method


# virtual methods
.method public activeAPN(Ljava/lang/String;)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_18
    const-string/jumbo v0, "APNManager"

    const-string/jumbo v1, "neither name or numeric can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_22
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v12

    invoke-direct {p0, v8, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_93

    :try_start_3c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_93

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "apn_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "APNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "active apn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_3c .. :try_end_8a} :catchall_b1

    if-lez v9, :cond_91

    move v0, v11

    :goto_8d
    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return v0

    :cond_91
    move v0, v12

    goto :goto_8d

    :cond_93
    :try_start_93
    const-string/jumbo v0, "APNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No such config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_b1

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return v12

    :catchall_b1
    move-exception v0

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_13
    const-string/jumbo v0, "APNManager"

    const-string/jumbo v1, "neither name or numeric can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v10

    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_87

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_87

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "apn_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "APNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "active apn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_86
    return-void

    :cond_87
    const-string/jumbo v0, "APNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No such config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86
.end method

.method public addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z
    .registers 11

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo v3, "APNManager"

    const-string/jumbo v4, "Invalidate numeric"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_25
    iget-object v0, p1, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    goto :goto_15

    :cond_28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "name"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "apn"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "password"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "authtype"

    iget v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "bearer"

    iget v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "mcc"

    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_74
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mnc"

    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_176

    const/4 v3, 0x5

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_87
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "numeric"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "read_only"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    if-eq v3, v7, :cond_aa

    const-string/jumbo v3, "carrier_enabled"

    iget v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_aa
    iget v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    if-eq v3, v7, :cond_ba

    const-string/jumbo v3, "current"

    iget v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_ba
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    if-eqz v3, :cond_c6

    const-string/jumbo v3, "mmsc"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c6
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    if-eqz v3, :cond_d2

    const-string/jumbo v3, "mmsport"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    if-eqz v3, :cond_de

    const-string/jumbo v3, "mmsproxy"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    if-eqz v3, :cond_ea

    const-string/jumbo v3, "mvno_match_data"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    if-eqz v3, :cond_f6

    const-string/jumbo v3, "mvno_type"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    if-eqz v3, :cond_102

    const-string/jumbo v3, "port"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_102
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    if-eqz v3, :cond_10e

    const-string/jumbo v3, "protocol"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10e
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    if-eqz v3, :cond_11a

    const-string/jumbo v3, "proxy"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11a
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    if-eqz v3, :cond_126

    const-string/jumbo v3, "roaming_protocol"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_126
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    if-eqz v3, :cond_132

    const-string/jumbo v3, "server"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_132
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    if-eqz v3, :cond_13e

    const-string/jumbo v3, "sub_id"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13e
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    if-eqz v3, :cond_14a

    const-string/jumbo v3, "type"

    iget-object v6, p1, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14a
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "APNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New apn config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_17a

    move v3, v4

    :goto_171
    return v3

    :cond_172
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    goto/16 :goto_74

    :cond_176
    iget-object v3, p1, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    goto/16 :goto_87

    :cond_17a
    move v3, v5

    goto :goto_171
.end method

.method public addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 8

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "APNManager"

    const-string/jumbo v3, "Invalidate numeric"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "apn"

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "authtype"

    iget v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "bearer"

    iget v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "mcc"

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mnc"

    const/4 v3, 0x5

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "numeric"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "read_only"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "APNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New apn config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteAPN(Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_16
    const-string/jumbo v3, "APNManager"

    const-string/jumbo v4, "neither name or numeric can\'t be null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_20
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "APNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delete apn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "rows"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_53

    const/4 v2, 0x1

    :cond_53
    return v2
.end method

.method public deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_11
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "neither name or numeric can\'t be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "APNManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delete apn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z
    .registers 12

    const/4 v8, 0x3

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_21
    const-string/jumbo v3, "APNManager"

    const-string/jumbo v5, "neither name or numeric can\'t be null"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2b
    iget-object v1, p2, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    goto :goto_15

    :cond_2e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "name"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "apn"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "password"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "authtype"

    iget v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "bearer"

    iget v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "mcc"

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_158

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_7a
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "mnc"

    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15c

    const/4 v3, 0x5

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_8d
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "numeric"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    if-eq v3, v6, :cond_a6

    const-string/jumbo v3, "carrier_enabled"

    iget v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a6
    iget v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    if-eq v3, v6, :cond_b6

    const-string/jumbo v3, "current"

    iget v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b6
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    if-eqz v3, :cond_c2

    const-string/jumbo v3, "mmsc"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    if-eqz v3, :cond_ce

    const-string/jumbo v3, "mmsport"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    if-eqz v3, :cond_da

    const-string/jumbo v3, "mmsproxy"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_da
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    if-eqz v3, :cond_e6

    const-string/jumbo v3, "mvno_match_data"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    if-eqz v3, :cond_f2

    const-string/jumbo v3, "mvno_type"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    if-eqz v3, :cond_fe

    const-string/jumbo v3, "port"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fe
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    if-eqz v3, :cond_10a

    const-string/jumbo v3, "protocol"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10a
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    if-eqz v3, :cond_116

    const-string/jumbo v3, "proxy"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_116
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    if-eqz v3, :cond_122

    const-string/jumbo v3, "roaming_protocol"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_122
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    if-eqz v3, :cond_12e

    const-string/jumbo v3, "server"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12e
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    if-eqz v3, :cond_13a

    const-string/jumbo v3, "sub_id"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13a
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    if-eqz v3, :cond_146

    const-string/jumbo v3, "type"

    iget-object v5, p2, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_146
    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_160

    const/4 v3, 0x1

    :goto_157
    return v3

    :cond_158
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    goto/16 :goto_7a

    :cond_15c
    iget-object v3, p2, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    goto/16 :goto_8d

    :cond_160
    move v3, v4

    goto :goto_157
.end method

.method public editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .registers 10

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_12
    const-string/jumbo v2, "APNManager"

    const-string/jumbo v3, "neither name or numeric can\'t be null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    iget-object v3, p3, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "apn"

    iget-object v3, p3, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    iget-object v3, p3, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    iget-object v3, p3, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "authtype"

    iget v3, p3, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "bearer"

    iget v3, p3, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "mcc"

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mnc"

    const/4 v3, 0x5

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "numeric"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "APNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update apn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v5

    const-string/jumbo v3, "apn"

    aput-object v3, v2, v9

    const-string/jumbo v3, "user"

    aput-object v3, v2, v10

    const-string/jumbo v3, "password"

    aput-object v3, v2, v11

    const-string/jumbo v3, "authtype"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-string/jumbo v3, "bearer"

    const/4 v5, 0x5

    aput-object v3, v2, v5

    const-string/jumbo v3, "mcc"

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const-string/jumbo v3, "mnc"

    const/4 v5, 0x7

    aput-object v3, v2, v5

    const-string/jumbo v3, "numeric"

    const/16 v5, 0x8

    aput-object v3, v2, v5

    const-string/jumbo v3, "carrier_enabled"

    const/16 v5, 0x9

    aput-object v3, v2, v5

    const-string/jumbo v3, "current"

    const/16 v5, 0xa

    aput-object v3, v2, v5

    const-string/jumbo v3, "mmsc"

    const/16 v5, 0xb

    aput-object v3, v2, v5

    const-string/jumbo v3, "mmsport"

    const/16 v5, 0xc

    aput-object v3, v2, v5

    const-string/jumbo v3, "mmsproxy"

    const/16 v5, 0xd

    aput-object v3, v2, v5

    const-string/jumbo v3, "mvno_match_data"

    const/16 v5, 0xe

    aput-object v3, v2, v5

    const-string/jumbo v3, "mvno_type"

    const/16 v5, 0xf

    aput-object v3, v2, v5

    const-string/jumbo v3, "port"

    const/16 v5, 0x10

    aput-object v3, v2, v5

    const-string/jumbo v3, "protocol"

    const/16 v5, 0x11

    aput-object v3, v2, v5

    const-string/jumbo v3, "proxy"

    const/16 v5, 0x12

    aput-object v3, v2, v5

    const-string/jumbo v3, "roaming_protocol"

    const/16 v5, 0x13

    aput-object v3, v2, v5

    const-string/jumbo v3, "server"

    const/16 v5, 0x14

    aput-object v3, v2, v5

    const-string/jumbo v3, "sub_id"

    const/16 v5, 0x15

    aput-object v3, v2, v5

    const-string/jumbo v3, "type"

    const/16 v5, 0x16

    aput-object v3, v2, v5

    invoke-direct {p0, v8, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_17c

    :try_start_ba
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_17c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v6, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v6}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    const/16 v0, 0xa

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    const/16 v0, 0xb

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;
    :try_end_178
    .catchall {:try_start_ba .. :try_end_178} :catchall_180

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v6

    :cond_17c
    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v4

    :catchall_180
    move-exception v0

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAPNActiveMode()I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_apn_switch_mode"

    invoke-static {v0, v1, v2, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v5

    const-string/jumbo v3, "apn"

    aput-object v3, v2, v8

    const-string/jumbo v3, "user"

    aput-object v3, v2, v9

    const-string/jumbo v3, "password"

    aput-object v3, v2, v10

    const-string/jumbo v3, "authtype"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-string/jumbo v3, "bearer"

    const/4 v5, 0x5

    aput-object v3, v2, v5

    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericAndNameSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7c

    :try_start_40
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v6, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v6}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I
    :try_end_78
    .catchall {:try_start_40 .. :try_end_78} :catchall_80

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v6

    :cond_7c
    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v4

    :catchall_80
    move-exception v0

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAPNList()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "apn"

    aput-object v3, v2, v5

    const-string/jumbo v3, "user"

    aput-object v3, v2, v10

    const-string/jumbo v3, "password"

    aput-object v3, v2, v11

    const-string/jumbo v3, "authtype"

    aput-object v3, v2, v12

    const-string/jumbo v3, "bearer"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "mcc"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string/jumbo v3, "mnc"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string/jumbo v3, "numeric"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string/jumbo v3, "carrier_enabled"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string/jumbo v3, "current"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string/jumbo v3, "mmsc"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-string/jumbo v3, "mmsport"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string/jumbo v3, "mmsproxy"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-string/jumbo v3, "mvno_match_data"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string/jumbo v3, "mvno_type"

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string/jumbo v3, "port"

    const/16 v4, 0x10

    aput-object v3, v2, v4

    const-string/jumbo v3, "protocol"

    const/16 v4, 0x11

    aput-object v3, v2, v4

    const-string/jumbo v3, "proxy"

    const/16 v4, 0x12

    aput-object v3, v2, v4

    const-string/jumbo v3, "roaming_protocol"

    const/16 v4, 0x13

    aput-object v3, v2, v4

    const-string/jumbo v3, "server"

    const/16 v4, 0x14

    aput-object v3, v2, v4

    const-string/jumbo v3, "sub_id"

    const/16 v4, 0x15

    aput-object v3, v2, v4

    const-string/jumbo v3, "type"

    const/16 v4, 0x16

    aput-object v3, v2, v4

    invoke-direct {p0, v9}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_1a8

    :try_start_bf
    const-string/jumbo v0, "APNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Query result size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_e0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1a8

    new-instance v6, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v6}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    const/16 v0, 0xb

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1a1
    .catchall {:try_start_bf .. :try_end_1a1} :catchall_1a3

    goto/16 :goto_e0

    :catchall_1a3
    move-exception v0

    invoke-direct {p0, v8}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_1a8
    invoke-direct {p0, v8}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v7
.end method

.method public getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v4

    const-string/jumbo v3, "apn"

    aput-object v3, v2, v5

    const-string/jumbo v3, "user"

    aput-object v3, v2, v9

    const-string/jumbo v3, "password"

    aput-object v3, v2, v10

    const-string/jumbo v3, "authtype"

    aput-object v3, v2, v11

    const-string/jumbo v3, "bearer"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/APNManagerService;->buildNumericSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_a7

    :try_start_45
    const-string/jumbo v0, "APNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Query result size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_66
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a7

    new-instance v6, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v6}, Lcom/miui/enterprise/sdk/APNConfig;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a1
    .catchall {:try_start_45 .. :try_end_a1} :catchall_a2

    goto :goto_66

    :catchall_a2
    move-exception v0

    invoke-direct {p0, v8}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_a7
    invoke-direct {p0, v8}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v7
.end method

.method public queryApn(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v5

    const-string/jumbo v5, "name ASC"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1d
    if-eqz v6, :cond_33

    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2e

    goto :goto_1d

    :catchall_2e
    move-exception v0

    invoke-direct {p0, v6}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_33
    invoke-direct {p0, v6}, Lcom/miui/server/enterprise/APNManagerService;->closeCursor(Landroid/database/Cursor;)V

    return-object v7
.end method

.method public resetAPN()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "apn_id"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/APNManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/server/enterprise/APNManagerService;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_22

    const/4 v2, 0x1

    :cond_22
    return v2
.end method

.method public setAPNActiveMode(I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/APNManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_apn_switch_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
