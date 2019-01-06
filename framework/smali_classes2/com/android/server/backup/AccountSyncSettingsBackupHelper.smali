.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final JSON_FORMAT_VERSION:I = 0x1

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MD5_BYTE_SIZE:I = 0x10

.field private static final STASH_FILE:Ljava/lang/String;

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/backup/unadded_account_syncsettings.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static accountAdded(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal()V

    return-void
.end method

.method private accountAddedInternal()V
    .registers 13

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    sget-object v10, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_24
    .catchall {:try_start_2 .. :try_end_e} :catchall_59

    :try_start_e
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_16} :catch_5e
    .catchall {:try_start_e .. :try_end_16} :catchall_5b

    move-result-object v6

    if-eqz v1, :cond_1c

    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_22
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_56

    :cond_1c
    :goto_1c
    if-eqz v9, :cond_42

    :try_start_1e
    throw v9
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1f} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_56

    :catch_1f
    move-exception v2

    move-object v0, v1

    :goto_21
    return-void

    :catch_22
    move-exception v9

    goto :goto_1c

    :catch_24
    move-exception v8

    :goto_25
    :try_start_25
    throw v8
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2a
    if-eqz v0, :cond_2f

    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2f} :catch_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_3f

    :cond_2f
    :goto_2f
    if-eqz v9, :cond_41

    :try_start_31
    throw v9

    :catch_32
    move-exception v2

    goto :goto_21

    :catch_34
    move-exception v10

    if-nez v9, :cond_39

    move-object v9, v10

    goto :goto_2f

    :cond_39
    if-eq v9, v10, :cond_2f

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2f

    :catch_3f
    move-exception v4

    :goto_40
    return-void

    :cond_41
    throw v8
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_42} :catch_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_42} :catch_3f

    :cond_42
    :try_start_42
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_4a} :catch_4b

    :goto_4a
    return-void

    :catch_4b
    move-exception v5

    const-string/jumbo v8, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v9, "there was an error with the stashed sync settings"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :catch_56
    move-exception v4

    move-object v0, v1

    goto :goto_40

    :catchall_59
    move-exception v8

    goto :goto_2a

    :catchall_5b
    move-exception v8

    move-object v0, v1

    goto :goto_2a

    :catch_5e
    move-exception v8

    move-object v0, v1

    goto :goto_25
.end method

.method private generateMd5Checksum([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private getAccounts()Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    array-length v4, v2

    :goto_d
    if-ge v3, v4, :cond_17

    aget-object v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    return-object v1
.end method

.method private readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x10

    const/4 v7, 0x1

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v3, v8, [B

    :try_start_13
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-gt v4, v7, :cond_25

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v8, :cond_52

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_25
    const-string/jumbo v5, "AccountSyncSettingsBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Backup state version is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (support only up to version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    return-object v3

    :catch_53
    move-exception v1

    goto :goto_52
.end method

.method private restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string/jumbo v9, "authorities"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string/jumbo v9, "name"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_4d

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string/jumbo v9, "name"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "syncEnabled"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v9, "syncState"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v0, v5, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    if-nez v7, :cond_48

    if-nez v8, :cond_4b

    move v9, v10

    :goto_45
    invoke-static {v0, v5, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_4b
    const/4 v9, 0x2

    goto :goto_45

    :cond_4d
    return-void
.end method

.method private restoreFromJsonArray(Lorg/json/JSONArray;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts()Ljava/util/HashSet;

    move-result-object v7

    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_48

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    :try_start_2d
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_32} :catch_bf

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_41

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V

    move-object v2, v3

    :goto_3e
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_41
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v2, v3

    goto :goto_3e

    :cond_48
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_a4

    const/16 v18, 0x0

    const/4 v8, 0x0

    :try_start_51
    new-instance v9, Ljava/io/FileOutputStream;

    sget-object v17, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5a} :catch_80
    .catchall {:try_start_51 .. :try_end_5a} :catchall_b7

    :try_start_5a
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v14, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_66} :catch_bc
    .catchall {:try_start_5a .. :try_end_66} :catchall_b9

    if-eqz v9, :cond_6b

    :try_start_68
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_7e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6e

    :cond_6b
    :goto_6b
    if-eqz v18, :cond_7d

    :try_start_6d
    throw v18
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception v12

    move-object v8, v9

    :goto_70
    const-string/jumbo v17, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v18, "unable to write the sync settings to the stash file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7d
    :goto_7d
    return-void

    :catch_7e
    move-exception v18

    goto :goto_6b

    :catch_80
    move-exception v17

    :goto_81
    :try_start_81
    throw v17
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v18

    move-object/from16 v20, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v20

    :goto_89
    if-eqz v8, :cond_8e

    :try_start_8b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8e} :catch_93
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_91

    :cond_8e
    :goto_8e
    if-eqz v18, :cond_a3

    :try_start_90
    throw v18

    :catch_91
    move-exception v12

    goto :goto_70

    :catch_93
    move-exception v19

    if-nez v18, :cond_99

    move-object/from16 v18, v19

    goto :goto_8e

    :cond_99
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_8e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8e

    :cond_a3
    throw v17
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a4} :catch_91

    :cond_a4
    new-instance v15, Ljava/io/File;

    sget-object v17, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7d

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_7d

    :catchall_b7
    move-exception v17

    goto :goto_89

    :catchall_b9
    move-exception v17

    move-object v8, v9

    goto :goto_89

    :catch_bc
    move-exception v17

    move-object v8, v9

    goto :goto_81

    :catch_bf
    move-exception v11

    goto/16 :goto_3e
.end method

.method private serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getUserId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v14

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v18, v17

    :goto_24
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6b

    aget-object v13, v14, v18

    invoke-virtual {v13}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v17

    if-nez v17, :cond_37

    :goto_32
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_24

    :cond_37
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_53

    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    iget-object v0, v13, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_6b
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v17, "version"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v17, "masterSyncEnabled"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    :goto_94
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_120

    aget-object v2, v6, v17

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_b0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_b3

    :cond_b0
    :goto_b0
    add-int/lit8 v17, v17, 0x1

    goto :goto_94

    :cond_b3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v19, "name"

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v19, "type"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_dd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_114

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v16

    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v19, "syncState"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v19, "syncEnabled"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_dd

    :cond_114
    const-string/jumbo v19, "authorities"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b0

    :cond_120
    const-string/jumbo v17, "accounts"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v12
.end method

.method private writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 13

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_34

    array-length v2, v0

    const-string/jumbo v6, "account_data"

    invoke-virtual {p2, v6, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v7, "Backup successful."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V

    :goto_33
    return-void

    :cond_34
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v7, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_30

    :catch_3e
    move-exception v3

    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 12

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v7

    new-array v2, v7, [B

    :try_start_6
    invoke-virtual {p1, v2}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v4, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "masterSyncEnabled"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v7, "accounts"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_43
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2e} :catch_43

    :cond_2e
    :try_start_2e
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3e

    :try_start_31
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    const-string/jumbo v7, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v8, "Restore successful."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void

    :catchall_3e
    move-exception v7

    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    throw v7
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_43} :catch_43
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_43} :catch_43

    :catch_43
    move-exception v5

    const-string/jumbo v7, "AccountSyncSettingsBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t restore account sync settings\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    return-void
.end method
