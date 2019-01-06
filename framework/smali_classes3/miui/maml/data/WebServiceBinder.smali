.class public Lmiui/maml/data/WebServiceBinder;
.super Lmiui/maml/data/VariableBinder;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/WebServiceBinder$AuthToken;,
        Lmiui/maml/data/WebServiceBinder$List;,
        Lmiui/maml/data/WebServiceBinder$QueryThread;,
        Lmiui/maml/data/WebServiceBinder$RequestMethod;,
        Lmiui/maml/data/WebServiceBinder$ResponseProtocol;,
        Lmiui/maml/data/WebServiceBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "WebServiceBinder"


# instance fields
.field private mAuthentication:Z

.field mContentStringVar:Lmiui/maml/data/IndexedVariable;

.field public mEncryptedUser:Ljava/lang/String;

.field mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

.field mErrorStringVar:Lmiui/maml/data/IndexedVariable;

.field private mLastQueryTime:J

.field private mList:Lmiui/maml/data/WebServiceBinder$List;

.field private mParamsFormatter:Lmiui/maml/util/TextFormatter;

.field private mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field private mQueryInProgress:Z

.field private mQueryThread:Ljava/lang/Thread;

.field mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field private mSecure:Z

.field public mSecurity:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field public mServiceToken:Ljava/lang/String;

.field mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;


# direct methods
.method static synthetic -get0(Lmiui/maml/data/WebServiceBinder;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/maml/data/WebServiceBinder;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    return v0
.end method

.method static synthetic -get4(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/data/WebServiceBinder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/maml/data/WebServiceBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/maml/data/WebServiceBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private canUseNetwork()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    return v3

    :cond_8
    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-nez v0, :cond_d

    return v2

    :cond_d
    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-ne v0, v3, :cond_1c

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v3

    :cond_1c
    return v2
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 4

    const-string/jumbo v0, "WebServiceBinder"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->setErrorString(Ljava/lang/String;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 16

    const/4 v13, 0x1

    const/4 v12, 0x0

    if-nez p1, :cond_16

    const-string/jumbo v0, "WebServiceBinder"

    const-string/jumbo v2, "WebServiceBinder node is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "node is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string/jumbo v0, "requestMethod"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "get"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    :cond_2a
    const-string/jumbo v0, "queryAtStart"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    const-string/jumbo v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "uri"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uriFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uriParas"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "params"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paramsFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "paramsParas"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    const-string/jumbo v0, "updateInterval"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    const-string/jumbo v0, "protocol"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->parseProtocol(Ljava/lang/String;)V

    const-string/jumbo v0, "authentication"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    const-string/jumbo v0, "secure"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    const-string/jumbo v0, "serviceID"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    const-string/jumbo v0, "useNetwork"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d6

    const-string/jumbo v0, "all"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    :cond_d6
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    :goto_d9
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_181

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "statusCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v13}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v13}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v12}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v0, "dbgContentString"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_181

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contentString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v12}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    :cond_181
    const-string/jumbo v0, "List"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    if-eqz v9, :cond_193

    :try_start_18a
    new-instance v0, Lmiui/maml/data/WebServiceBinder$List;

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v9, v2}, Lmiui/maml/data/WebServiceBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_193
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18a .. :try_end_193} :catch_1b6

    :cond_193
    :goto_193
    return-void

    :cond_194
    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    iput v13, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto/16 :goto_d9

    :cond_1a1
    const-string/jumbo v0, "none"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    iput v12, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto/16 :goto_d9

    :cond_1ae
    invoke-static {v1, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto/16 :goto_d9

    :catch_1b6
    move-exception v8

    const-string/jumbo v0, "WebServiceBinder"

    const-string/jumbo v2, "invalid List"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193
.end method

.method private parseProtocol(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "json/obj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_d

    :cond_1c
    const-string/jumbo v0, "json/array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_d

    :cond_2a
    const-string/jumbo v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_d
.end method

.method private processResponseJson(Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    :try_start_1
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    sget-object v9, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v8, v9, :cond_37

    new-instance v3, Lmiui/maml/util/JSONPath;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    move-object v2, v3

    :goto_12
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/VariableBinder$Variable;

    move-object v0, v6

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v5, v0

    iget-object v8, v5, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_31} :catch_32

    goto :goto_18

    :catch_32
    move-exception v1

    invoke-direct {p0, v1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    :try_start_37
    new-instance v3, Lmiui/maml/util/JSONPath;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONArray;)V

    move-object v2, v3

    goto :goto_12

    :cond_43
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    if-eqz v8, :cond_36

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v8, v8, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_36

    instance-of v8, v4, Lorg/json/JSONArray;

    if-eqz v8, :cond_36

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {v8, v4}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/json/JSONArray;)V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_5c} :catch_32

    goto :goto_36
.end method

.method private processResponseXml(Ljava/lang/String;)V
    .registers 25

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v19

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v12, 0x0

    :try_start_d
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v13, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v20, "utf-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_23
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_23} :catch_154
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_23} :catch_157
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_23} :catch_135
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_125
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_115
    .catchall {:try_start_d .. :try_end_23} :catchall_148

    :try_start_23
    invoke-virtual {v3, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_31
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_99

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmiui/maml/data/VariableBinder$Variable;

    move-object/from16 v0, v17

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v14, v0
    :try_end_42
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23 .. :try_end_42} :catch_8c
    .catch Lorg/xml/sax/SAXException; {:try_start_23 .. :try_end_42} :catch_104
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_42} :catch_159
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_42} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_42} :catch_15f
    .catchall {:try_start_23 .. :try_end_42} :catchall_151

    :try_start_42
    iget-object v0, v14, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_55
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_42 .. :try_end_55} :catch_56
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_42 .. :try_end_55} :catch_8c
    .catch Lorg/xml/sax/SAXException; {:try_start_42 .. :try_end_55} :catch_104
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_55} :catch_159
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_55} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_55} :catch_15f
    .catchall {:try_start_42 .. :try_end_55} :catchall_151

    goto :goto_31

    :catch_56
    move-exception v10

    const/16 v20, 0x0

    :try_start_59
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    const-string/jumbo v20, "WebServiceBinder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fail to get variable: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_59 .. :try_end_8b} :catch_8c
    .catch Lorg/xml/sax/SAXException; {:try_start_59 .. :try_end_8b} :catch_104
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_59 .. :try_end_8b} :catch_159
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_8b} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8b} :catch_15f
    .catchall {:try_start_59 .. :try_end_8b} :catchall_151

    goto :goto_31

    :catch_8c
    move-exception v9

    move-object v12, v13

    :goto_8e
    :try_start_8e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_148

    if-eqz v12, :cond_98

    :try_start_95
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_145

    :cond_98
    :goto_98
    return-void

    :cond_99
    :try_start_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v20, v0
    :try_end_9f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_99 .. :try_end_9f} :catch_8c
    .catch Lorg/xml/sax/SAXException; {:try_start_99 .. :try_end_9f} :catch_104
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_99 .. :try_end_9f} :catch_159
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9f} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9f} :catch_15f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_151

    if-eqz v20, :cond_c8

    :try_start_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/NodeList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/w3c/dom/NodeList;)V
    :try_end_c8
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_a1 .. :try_end_c8} :catch_cf
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a1 .. :try_end_c8} :catch_8c
    .catch Lorg/xml/sax/SAXException; {:try_start_a1 .. :try_end_c8} :catch_104
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a1 .. :try_end_c8} :catch_159
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_c8} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c8} :catch_15f
    .catchall {:try_start_a1 .. :try_end_c8} :catchall_151

    :cond_c8
    :goto_c8
    if-eqz v13, :cond_cd

    :try_start_ca
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_113

    :cond_cd
    :goto_cd
    move-object v12, v13

    goto :goto_98

    :catch_cf
    move-exception v10

    :try_start_d0
    const-string/jumbo v20, "WebServiceBinder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fail to get list: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmiui/maml/data/WebServiceBinder$List;->-get0(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d0 .. :try_end_103} :catch_8c
    .catch Lorg/xml/sax/SAXException; {:try_start_d0 .. :try_end_103} :catch_104
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d0 .. :try_end_103} :catch_159
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_103} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_103} :catch_15f
    .catchall {:try_start_d0 .. :try_end_103} :catchall_151

    goto :goto_c8

    :catch_104
    move-exception v11

    move-object v12, v13

    :goto_106
    :try_start_106
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_148

    if-eqz v12, :cond_98

    :try_start_10d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_98

    :catch_111
    move-exception v6

    goto :goto_98

    :catch_113
    move-exception v6

    goto :goto_cd

    :catch_115
    move-exception v8

    :goto_116
    :try_start_116
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_11b
    .catchall {:try_start_116 .. :try_end_11b} :catchall_148

    if-eqz v12, :cond_98

    :try_start_11d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_122

    goto/16 :goto_98

    :catch_122
    move-exception v6

    goto/16 :goto_98

    :catch_125
    move-exception v6

    :goto_126
    :try_start_126
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_12b
    .catchall {:try_start_126 .. :try_end_12b} :catchall_148

    if-eqz v12, :cond_98

    :try_start_12d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_132

    goto/16 :goto_98

    :catch_132
    move-exception v6

    goto/16 :goto_98

    :catch_135
    move-exception v7

    :goto_136
    :try_start_136
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_13b
    .catchall {:try_start_136 .. :try_end_13b} :catchall_148

    if-eqz v12, :cond_98

    :try_start_13d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_142

    goto/16 :goto_98

    :catch_142
    move-exception v6

    goto/16 :goto_98

    :catch_145
    move-exception v6

    goto/16 :goto_98

    :catchall_148
    move-exception v20

    :goto_149
    if-eqz v12, :cond_14e

    :try_start_14b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_14f

    :cond_14e
    :goto_14e
    throw v20

    :catch_14f
    move-exception v6

    goto :goto_14e

    :catchall_151
    move-exception v20

    move-object v12, v13

    goto :goto_149

    :catch_154
    move-exception v9

    goto/16 :goto_8e

    :catch_157
    move-exception v11

    goto :goto_106

    :catch_159
    move-exception v7

    move-object v12, v13

    goto :goto_136

    :catch_15c
    move-exception v6

    move-object v12, v13

    goto :goto_126

    :catch_15f
    move-exception v8

    move-object v12, v13

    goto :goto_116
.end method

.method private setErrorCode(I)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_a
    const-string/jumbo v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QueryThread error: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setErrorString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private setStatusCode(I)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_a
    const-string/jumbo v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QueryThread status code: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryStartQuery()V
    .registers 9

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_10

    iput-wide v6, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    :cond_10
    iget-wide v2, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_23

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    if-lez v2, :cond_26

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    :cond_23
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    :cond_26
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    :cond_18
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    :cond_31
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_3c

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    :cond_3c
    return-void
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/WebServiceBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/WebServiceBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    return-void
.end method

.method public processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V
    .registers 8

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_13

    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "no image element var"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-virtual {p1}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->getStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->-wrap0(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v3, v2, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->saveCache(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    :goto_32
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :cond_36
    const/4 v0, 0x0

    if-eqz v2, :cond_4c

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_48

    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "decoded bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    invoke-virtual {v3, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_32

    :cond_4c
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "response stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public refresh()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    :cond_a
    return-void
.end method

.method public startQuery()V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "WebServiceBinder"

    const-string/jumbo v1, "capability disabled: webservice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    if-eqz v0, :cond_18

    return-void

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_2f
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_4e
    const-string/jumbo v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6b
    iput-boolean v2, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    new-instance v0, Lmiui/maml/data/WebServiceBinder$QueryThread;

    invoke-direct {v0, p0}, Lmiui/maml/data/WebServiceBinder$QueryThread;-><init>(Lmiui/maml/data/WebServiceBinder;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
