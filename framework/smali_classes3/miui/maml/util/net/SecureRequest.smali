.class public Lmiui/maml/util/net/SecureRequest;
.super Ljava/lang/Object;
.source "SecureRequest.java"


# static fields
.field private static final UTF8:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/InvalidResponseException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lmiui/maml/util/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v1

    if-nez v1, :cond_10

    new-instance v5, Lmiui/maml/util/net/CipherException;

    const-string/jumbo v6, "failed to init cipher"

    invoke-direct {v5, v6}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    const/4 v3, 0x0

    const/4 v5, 0x2

    :try_start_12
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_2f

    move-object v3, v4

    :goto_23
    if-nez v3, :cond_2e

    new-instance v5, Lmiui/maml/util/net/InvalidResponseException;

    const-string/jumbo v6, "failed to decrypt response"

    invoke-direct {v5, v6}, Lmiui/maml/util/net/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2e
    return-object v3

    :catch_2f
    move-exception v2

    goto :goto_23
.end method

.method public static encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/util/net/CipherException;
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {p3, v9}, Lmiui/maml/util/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v9, Lmiui/maml/util/net/CipherException;

    const-string/jumbo v10, "failed to init cipher"

    invoke-direct {v9, v10}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_10
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_6a

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6a

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v5, :cond_27

    if-eqz v8, :cond_27

    const-string/jumbo v9, "_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5c

    :try_start_4c
    const-string/jumbo v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5b} :catch_60

    move-result-object v8

    :cond_5c
    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :catch_60
    move-exception v1

    new-instance v9, Lmiui/maml/util/net/CipherException;

    const-string/jumbo v10, "failed to encrypt request params"

    invoke-direct {v9, v10, v1}, Lmiui/maml/util/net/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_6a
    invoke-static {p0, p1, v6, p3}, Lmiui/maml/util/net/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "signature"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 7
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 8
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    const-string/jumbo v2, "GET"

    invoke-static {v2, p0, p1, p4}, Lmiui/maml/util/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    invoke-static {v1, p4}, Lmiui/maml/util/net/SecureRequest;->processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .registers 7
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 8
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
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/CipherException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    const-string/jumbo v2, "POST"

    invoke-static {v2, p0, p1, p4}, Lmiui/maml/util/net/SecureRequest;->encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v1

    invoke-static {v1, p4}, Lmiui/maml/util/net/SecureRequest;->processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v2

    return-object v2
.end method

.method private static processStringResponse(Lmiui/maml/util/net/SimpleRequest$StringContent;Ljava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/InvalidResponseException;,
            Lmiui/maml/util/net/CipherException;
        }
    .end annotation

    if-nez p0, :cond_b

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "no response from server"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v3, Lmiui/maml/util/net/InvalidResponseException;

    const-string/jumbo v4, "invalid response from server"

    invoke-direct {v3, v4}, Lmiui/maml/util/net/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    invoke-static {v0, p1}, Lmiui/maml/util/net/SecureRequest;->decryptResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-direct {v2, v1}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V

    return-object v2
.end method
