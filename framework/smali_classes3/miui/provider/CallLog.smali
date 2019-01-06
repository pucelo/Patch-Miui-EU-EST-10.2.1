.class public Lmiui/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/CallLog;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .registers 25

    const-string/jumbo v15, "CallLog"

    const-string/jumbo v16, "addCall(): addForAllUsers=%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const-string/jumbo v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v15

    if-eqz v15, :cond_39

    invoke-virtual {v13}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_39

    sget-object p1, Lmiui/provider/ExtraContacts$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    :cond_39
    invoke-virtual {v13}, Landroid/os/UserManager;->getUserHandle()I

    move-result v4

    if-eqz p3, :cond_96

    sget-object v15, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v15, v1, v2}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_5a

    const-string/jumbo v15, "call_log_shadow"

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5c

    :cond_5a
    const/4 v15, 0x0

    return-object v15

    :cond_5c
    if-nez v4, :cond_5f

    move-object v6, v9

    :cond_5f
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_69
    if-ge v5, v3, :cond_a4

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v10}, Landroid/os/UserHandle;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_82

    :cond_7f
    :goto_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_82
    invoke-static {v13, v12}, Lmiui/provider/CallLog;->canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z

    move-result v15

    if-eqz v15, :cond_7f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v10, v1, v2}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    if-ne v11, v4, :cond_7f

    move-object v6, v8

    goto :goto_7f

    :cond_96
    if-eqz p4, :cond_be

    move-object/from16 v7, p4

    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v7, v1, v2}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    :cond_a4
    const-string/jumbo v15, "CallLog"

    const-string/jumbo v16, "addCall(): result=%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_be
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    goto :goto_9a
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 47

    const/16 v26, 0x0

    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_5} :catch_53

    move-result-object v26

    :goto_6
    const/16 v22, 0x0

    if-eqz v26, :cond_20

    if-eqz p18, :cond_20

    move-object/from16 v0, v26

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v23

    if-eqz v23, :cond_20

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v24

    if-eqz v24, :cond_20

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v22

    :cond_20
    const/16 v20, 0x0

    const/16 v21, 0x0

    if-eqz p18, :cond_32

    invoke-virtual/range {p18 .. p18}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p18 .. p18}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v21

    :cond_32
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v2 .. v22}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :catch_53
    move-exception v25

    goto :goto_6
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 38

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v18, p17

    invoke-static/range {v0 .. v18}, Lmiui/provider/CallLog;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-eq v3, v2, :cond_41

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {p0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    :cond_26
    :goto_26
    const-string/jumbo v2, "CallLog"

    const-string/jumbo v3, "canInsertCallLog(): user=%s, canInsert=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private static insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p2, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v2

    return-object v2

    :catch_11
    move-exception v0

    const-string/jumbo v2, "CallLog"

    const-string/jumbo v3, "Failed to insert calllog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method
