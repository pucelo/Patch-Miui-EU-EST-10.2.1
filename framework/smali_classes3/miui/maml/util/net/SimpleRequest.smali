.class public final Lmiui/maml/util/net/SimpleRequest;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/net/SimpleRequest$HeaderContent;,
        Lmiui/maml/util/net/SimpleRequest$MapContent;,
        Lmiui/maml/util/net/SimpleRequest$StreamContent;,
        Lmiui/maml/util/net/SimpleRequest$StringContent;
    }
.end annotation


# static fields
.field private static final CER_12306:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4XDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb29bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6D4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHletne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Ptx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

.field private static final DEBUG:Z = false

.field private static final HOST_12306:Ljava/lang/String; = "kyfw.12306.cn"

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"

.field private static final PARAM_IGNORE_12306_CA:Ljava/lang/String; = "ignore12306ca"

.field private static final TIMEOUT:I = 0x7530

.field public static final UTF8:Ljava/lang/String; = "utf-8"

.field private static final log:Ljava/util/logging/Logger;

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/maml/util/net/SimpleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendUrl(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_b

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "origin is not allowed null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_33

    const-string/jumbo v2, "utf-8"

    invoke-static {p1, v2}, Lmiui/maml/util/net/SimpleRequest;->format(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_38
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30
.end method

.method protected static convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 8

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_12

    move-object v3, v4

    :goto_f
    if-nez v3, :cond_17

    return-object v6

    :catch_12
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    :cond_17
    invoke-static {v3}, Lmiui/maml/util/net/ObjectUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    new-instance v5, Lmiui/maml/util/net/SimpleRequest$MapContent;

    invoke-direct {v5, v1}, Lmiui/maml/util/net/SimpleRequest$MapContent;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/util/net/SimpleRequest$MapContent;->putHeaders(Ljava/util/Map;)V

    return-object v5
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    :goto_2
    :try_start_2
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    const-string/jumbo p1, "ISO-8859-1"
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_2

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static format(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lmiui/maml/util/net/SimpleRequest;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_40

    invoke-static {v5, p1}, Lmiui/maml/util/net/SimpleRequest;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_33

    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_40
    const-string/jumbo v1, ""

    goto :goto_27

    :cond_44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/maml/util/net/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v10

    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-static {v7, v0, v10}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v3

    if-nez v3, :cond_27

    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v14, "failed to create URLConnection"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "failed to create connection"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_27
    const/4 v13, 0x1

    :try_start_28
    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string/jumbo v13, "GET"

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v13, 0xc8

    if-ne v2, v13, :cond_70

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v1, v11, v8}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v8}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v12, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Lmiui/maml/util/net/SimpleRequest$StreamContent;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v12, v5}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->putHeaders(Ljava/util/Map;)V

    return-object v12

    :cond_70
    const/16 v13, 0x193

    if-ne v2, v13, :cond_87

    new-instance v13, Lmiui/maml/util/net/AccessDeniedException;

    const-string/jumbo v14, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v13, v14}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_7d
    .catch Ljava/net/ProtocolException; {:try_start_28 .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception v6

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "protocol error"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_87
    const/16 v13, 0x191

    if-eq v2, v13, :cond_8f

    const/16 v13, 0x190

    if-ne v2, v13, :cond_a9

    :cond_8f
    :try_start_8f
    new-instance v13, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "authentication failure for get, code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_a9
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "http status error when GET: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 v13, 0x12d

    if-ne v2, v13, :cond_f9

    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected redirect from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "Location"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_f9
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected http res code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_113
    .catch Ljava/net/ProtocolException; {:try_start_8f .. :try_end_113} :catch_7d
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v12

    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0, v12}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v5

    if-nez v5, :cond_27

    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v18, "failed to create URLConnection"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "failed to create connection"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_27
    const/16 v17, 0x1

    :try_start_29
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string/jumbo v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v4, v0, :cond_49

    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v4, v0, :cond_be

    :cond_49
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v9}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v3, v14, v10}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v10}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_ac

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_8b
    .catch Ljava/net/ProtocolException; {:try_start_29 .. :try_end_8b} :catch_9a
    .catchall {:try_start_29 .. :try_end_8b} :catchall_a4

    :goto_8b
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a9

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_95

    goto :goto_8b

    :catchall_95
    move-exception v17

    :try_start_96
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v17
    :try_end_9a
    .catch Ljava/net/ProtocolException; {:try_start_96 .. :try_end_9a} :catch_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_a4

    :catch_9a
    move-exception v8

    :try_start_9b
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "protocol error"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception v17

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v17

    :cond_a9
    :try_start_a9
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    :cond_ac
    new-instance v16, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_ba
    .catch Ljava/net/ProtocolException; {:try_start_a9 .. :try_end_ba} :catch_9a
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_a4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v16

    :cond_be
    const/16 v17, 0x193

    move/from16 v0, v17

    if-ne v4, v0, :cond_cd

    :try_start_c4
    new-instance v17, Lmiui/maml/util/net/AccessDeniedException;

    const-string/jumbo v18, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_cd
    const/16 v17, 0x191

    move/from16 v0, v17

    if-eq v4, v0, :cond_d9

    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v4, v0, :cond_f5

    :cond_d9
    new-instance v17, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "authentication failure for get, code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_f5
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "http status error when GET: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 v17, 0x12d

    move/from16 v0, v17

    if-ne v4, v0, :cond_14b

    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unexpected redirect from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_14b
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unexpected http res code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_167
    .catch Ljava/net/ProtocolException; {:try_start_c4 .. :try_end_167} :catch_9a
    .catchall {:try_start_c4 .. :try_end_167} :catchall_a4
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p0, :cond_4

    return-object v7

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-lez v3, :cond_23

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v12, 0x0

    :try_start_1
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_8} :catch_16

    move-object v12, v13

    :goto_9
    if-nez v12, :cond_1b

    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v19, "failed to init url"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v18, 0x0

    return-object v18

    :catch_16
    move-exception v9

    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_9

    :cond_1b
    :try_start_1b
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v18, "Content-Type"

    const-string/jumbo v19, "application/x-www-form-urlencoded"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_61

    const-string/jumbo v18, "Cookie"

    const-string/jumbo v19, "; "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lmiui/maml/util/net/SimpleRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    const-string/jumbo v18, "kyfw.12306.cn"

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a8

    instance-of v0, v7, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_a8

    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    const-string/jumbo v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    if-eqz p2, :cond_a9

    new-instance v16, Lmiui/maml/util/net/SimpleRequest$1;

    invoke-direct/range {v16 .. v16}, Lmiui/maml/util/net/SimpleRequest$1;-><init>()V

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    :goto_9f
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_a8
    return-object v7

    :cond_a9
    const-string/jumbo v18, "X.509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_af} :catch_103

    move-result-object v6

    const/4 v4, 0x0

    :try_start_b1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v19, "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4XDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb29bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6D4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHletne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Ptx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c4
    .catchall {:try_start_b1 .. :try_end_c4} :catchall_10a

    :try_start_c4
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v18, "ca"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v15}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_ff
    .catchall {:try_start_c4 .. :try_end_ff} :catchall_10f

    :try_start_ff
    invoke-static {v5}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_102} :catch_103

    goto :goto_9f

    :catch_103
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v18, 0x0

    return-object v18

    :catchall_10a
    move-exception v18

    :goto_10b
    :try_start_10b
    invoke-static {v4}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v18
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10f} :catch_103

    :catchall_10f
    move-exception v18

    move-object v4, v5

    goto :goto_10b
.end method

.method private static needIgnore12306CA(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "ignore12306ca"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "ignore12306ca"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method protected static parseCookies(Ljava/util/List;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_9

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_29
    return-object v2
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v6

    if-nez v6, :cond_1f

    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string/jumbo v19, "failed to create URLConnection"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "failed to create connection"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1f
    const/16 v18, 0x1

    :try_start_21
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v8

    if-eqz v8, :cond_61

    const-string/jumbo v18, "utf-8"

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lmiui/maml/util/net/SimpleRequest;->format(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_50
    .catch Ljava/net/ProtocolException; {:try_start_21 .. :try_end_50} :catch_c4
    .catchall {:try_start_21 .. :try_end_50} :catchall_ce

    :try_start_50
    const-string/jumbo v18, "utf-8"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_d3

    :try_start_5e
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :cond_61
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v5, v0, :cond_71

    const/16 v18, 0x12e

    move/from16 v0, v18

    if-ne v5, v0, :cond_ed

    :cond_71
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v4, v15, v11}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v11}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_db

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x400

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_b3
    .catch Ljava/net/ProtocolException; {:try_start_5e .. :try_end_b3} :catch_c4
    .catchall {:try_start_5e .. :try_end_b3} :catchall_ce

    :goto_b3
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d8

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_be
    .catchall {:try_start_b3 .. :try_end_be} :catchall_bf

    goto :goto_b3

    :catchall_bf
    move-exception v18

    :try_start_c0
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v18
    :try_end_c4
    .catch Ljava/net/ProtocolException; {:try_start_c0 .. :try_end_c4} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_ce

    :catch_c4
    move-exception v10

    :try_start_c5
    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "protocol error"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception v18

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v18

    :catchall_d3
    move-exception v18

    :try_start_d4
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v18

    :cond_d8
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    :cond_db
    new-instance v17, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_e9
    .catch Ljava/net/ProtocolException; {:try_start_d4 .. :try_end_e9} :catch_c4
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_ce

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v17

    :cond_ed
    const/16 v18, 0x193

    move/from16 v0, v18

    if-ne v5, v0, :cond_fc

    :try_start_f3
    new-instance v18, Lmiui/maml/util/net/AccessDeniedException;

    const-string/jumbo v19, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v18 .. v19}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_fc
    const/16 v18, 0x191

    move/from16 v0, v18

    if-eq v5, v0, :cond_108

    const/16 v18, 0x190

    move/from16 v0, v18

    if-ne v5, v0, :cond_124

    :cond_108
    new-instance v18, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "authentication failure for post, code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_124
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "http status error when POST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 v18, 0x12d

    move/from16 v0, v18

    if-ne v5, v0, :cond_17a

    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected redirect from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "Location"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_17a
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected http res code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_196
    .catch Ljava/net/ProtocolException; {:try_start_f3 .. :try_end_196} :catch_c4
    .catchall {:try_start_f3 .. :try_end_196} :catchall_ce
.end method
