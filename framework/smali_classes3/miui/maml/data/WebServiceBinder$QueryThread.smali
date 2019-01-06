.class Lmiui/maml/data/WebServiceBinder$QueryThread;
.super Ljava/lang/Thread;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I = null

.field private static final synthetic -miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I = null

.field private static final ERROR_IO_EXCEPTION:I = 0x8

.field private static final ERROR_OK:I = 0x0

.field private static final ERROR_SECURE_ACCOUNT_AUTHTOKEN_FAIL:I = 0x5

.field private static final ERROR_SECURE_ACCOUNT_NOT_LOGIN:I = 0x4

.field private static final ERROR_SECURE_CIPHER_EXCEPTION:I = 0x6

.field private static final ERROR_SECURE_INVALID_RESPONSE:I = 0x7

.field public static final ERROR_USE_NETWORK_FORBIDDEN:I = 0x3

.field private static final KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$data$WebServiceBinder$RequestMethod:[I

.field final synthetic $SWITCH_TABLE$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

.field final synthetic this$0:Lmiui/maml/data/WebServiceBinder;


# direct methods
.method private static synthetic -getmiui-maml-data-WebServiceBinder$RequestMethodSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->values()[Lmiui/maml/data/WebServiceBinder$RequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getmiui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->values()[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/data/WebServiceBinder;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string/jumbo v0, "WebServiceBinder QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;
    .registers 39

    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "doRequest"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v4}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v12, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    if-eqz p3, :cond_f7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-nez v4, :cond_da

    :cond_2a
    const/4 v3, 0x0

    const-string/jumbo v4, "com.xiaomi"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v4, v10

    if-lez v4, :cond_38

    const/4 v4, 0x0

    aget-object v3, v10, v4

    :cond_38
    if-nez v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "xiaomi account not login"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string/jumbo v5, "encrypted_user_id"

    invoke-virtual {v2, v3, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get4(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v23

    const/4 v11, 0x0

    if-eqz v23, :cond_a1

    :try_start_6d
    invoke-interface/range {v23 .. v23}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/Bundle;

    if-eqz v30, :cond_8e

    const-string/jumbo v4, "authtoken"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lmiui/maml/data/WebServiceBinder$AuthToken;->parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;
    :try_end_81
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6d .. :try_end_81} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6d .. :try_end_81} :catch_ab
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_81} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_81} :catch_b4

    move-result-object v11

    :goto_82
    if-nez v11, :cond_ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    const/4 v4, 0x0

    return-object v4

    :cond_8e
    :try_start_8e
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "getAuthToken: future getResult is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8e .. :try_end_97} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8e .. :try_end_97} :catch_ab
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_97} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_97} :catch_b4

    goto :goto_82

    :catch_98
    move-exception v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_82

    :cond_a1
    :try_start_a1
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "getAuthToken: future is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Landroid/accounts/OperationCanceledException; {:try_start_a1 .. :try_end_aa} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_a1 .. :try_end_aa} :catch_ab
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_aa} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_aa} :catch_b4

    goto :goto_82

    :catch_ab
    move-exception v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4, v14}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_82

    :catch_b4
    move-exception v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_82

    :catch_bf
    move-exception v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_82

    :cond_ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    :cond_da
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "cUserId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "serviceToken"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f7
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get1(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13d

    const-string/jumbo v4, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/4 v4, 0x0

    move-object/from16 v0, v32

    array-length v5, v0

    :goto_11b
    if-ge v4, v5, :cond_13d

    aget-object v24, v32, v4

    const-string/jumbo v6, ":"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_131

    :goto_12e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    :cond_131
    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget-object v7, v25, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12e

    :cond_13d
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get2(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v4

    sget-object v5, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v4, v5, :cond_15e

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;

    move-result-object v28

    if-eqz v28, :cond_1bf

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    return-object v28

    :cond_15e
    const/16 v29, 0x0

    invoke-static {}, Lmiui/maml/data/WebServiceBinder$QueryThread;->-getmiui-maml-data-WebServiceBinder$RequestMethodSwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_248

    :goto_16d
    if-eqz v29, :cond_1bf

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    invoke-virtual/range {v29 .. v29}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v31

    return-object v31

    :pswitch_17d
    if-eqz p4, :cond_18f

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v5, v4}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v29

    goto :goto_16d

    :cond_18f
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v29

    goto :goto_16d

    :pswitch_199
    if-eqz p4, :cond_1ab

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v5, v4}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v29

    goto :goto_16d

    :cond_1ab
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v4}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_1b3} :catch_233
    .catch Lmiui/maml/util/net/CipherException; {:try_start_13d .. :try_end_1b3} :catch_220
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_13d .. :try_end_1b3} :catch_20c
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_13d .. :try_end_1b3} :catch_1f9
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_13d .. :try_end_1b3} :catch_1c1
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_1b3} :catch_1b5

    move-result-object v29

    goto :goto_16d

    :catch_1b5
    move-exception v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    :cond_1bf
    :goto_1bf
    const/4 v4, 0x0

    return-object v4

    :catch_1c1
    move-exception v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x190

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    const-string/jumbo v4, "com.xiaomi"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x0

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-eqz p5, :cond_1bf

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :catch_1f9
    move-exception v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_1bf

    :catch_20c
    move-exception v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x193

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_1bf

    :catch_220
    move-exception v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_1bf

    :catch_233
    move-exception v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    goto/16 :goto_1bf

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_17d
        :pswitch_199
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "WebServiceBinder"

    const-string/jumbo v3, "QueryThread start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v2, v6}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v2, v6}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v2, v2, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a4

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v2, v2, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v3}, Lmiui/maml/data/WebServiceBinder;->-get0(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v3

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get3(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v2, v2, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_59

    if-eqz v0, :cond_84

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v2, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    if-eqz v0, :cond_6e

    invoke-static {}, Lmiui/maml/data/WebServiceBinder$QueryThread;->-getmiui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v3}, Lmiui/maml/data/WebServiceBinder;->-get2(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ae

    :cond_6e
    :goto_6e
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v2}, Lmiui/maml/data/WebServiceBinder;->onUpdateComplete()V

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v2, v6}, Lmiui/maml/data/WebServiceBinder;->-set0(Lmiui/maml/data/WebServiceBinder;Z)Z

    const-string/jumbo v2, "WebServiceBinder"

    const-string/jumbo v3, "QueryThread end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_82
    const/4 v1, 0x0

    goto :goto_29

    :cond_84
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v2, v2, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_59

    :pswitch_8c
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap2(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_6e

    :pswitch_94
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap1(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_6e

    :pswitch_9c
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    invoke-virtual {v2, v0}, Lmiui/maml/data/WebServiceBinder;->processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V

    goto :goto_6e

    :cond_a4
    const-string/jumbo v2, "WebServiceBinder"

    const-string/jumbo v3, "url is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_94
        :pswitch_94
        :pswitch_8c
    .end packed-switch
.end method
