.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$1;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_ALIAS_DELIMITER:Ljava/lang/String; = " "

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final CA_PATH_KEY:Ljava/lang/String; = "ca_path"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_ERP:Ljava/lang/String; = "eap_erp"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORES_URI:Ljava/lang/String; = "keystores://"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final KEY_SIMNUM:Ljava/lang/String; = "sim_num"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiEnterpriseConfig"

.field private static final UNQUOTED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaCerts:[Ljava/security/cert/X509Certificate;

.field private mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mEapMethod:I

.field private mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Method:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "identity"

    aput-object v1, v0, v3

    const-string/jumbo v1, "anonymous_identity"

    aput-object v1, v0, v4

    const-string/jumbo v1, "password"

    aput-object v1, v0, v5

    const-string/jumbo v1, "client_cert"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ca_cert"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "subject_match"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "engine"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "engine_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "altsubject_match"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "domain_suffix_match"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "ca_path"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "engine"

    aput-object v1, v0, v3

    const-string/jumbo v1, "proactive_key_caching"

    aput-object v1, v0, v4

    const-string/jumbo v1, "eap_erp"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V

    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

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

.method private copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_30

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_30
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3e
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_6d

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    iget-object v3, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    :goto_4f
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_70

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v3, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    :goto_64
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return-void

    :cond_6d
    iput-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_4f

    :cond_70
    iput-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    goto :goto_64
.end method

.method public static decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_24

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_24
    :try_start_24
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_2c

    return-object v4

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object p0
.end method

.method public static encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v0

    move v3, v4

    :goto_11
    if-ge v3, v5, :cond_2d

    aget-byte v1, v0, v3

    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_17
    const-string/jumbo v1, ""

    return-object v1

    :cond_1b
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2e
    return-object v0
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return p3

    :cond_7
    const/4 v0, 0x0

    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_17

    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return p3
.end method

.method private isEapMethodValid()Z
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const-string/jumbo v0, "WifiEnterpriseConfig"

    const-string/jumbo v1, "WiFi enterprise configuration is invalid as it supplies no EAP method."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_10
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v0, :cond_1b

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_38

    :cond_1b
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEapMethod is invald for WiFi enterprise configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_38
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ltz v0, :cond_43

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_60

    :cond_43
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhase2Method is invald for WiFi enterprise configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_60
    const/4 v0, 0x1

    return v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, ""

    return-object v1

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_29

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_29
    return-object p1
.end method

.method private setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "NULL"

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    return-void

    :cond_f
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method


# virtual methods
.method public copyFromExternal(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "altsubject_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "anonymous_identity"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v1

    return-object v0

    :cond_10
    return-object v2
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificateAliases()[Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "ca_cert"

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "keystore://CACERT_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "ca_cert"

    const-string/jumbo v6, "keystore://CACERT_"

    invoke-direct {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    return-object v4

    :cond_22
    const-string/jumbo v5, "keystores://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const-string/jumbo v5, "keystores://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3e
    array-length v5, v0

    if-ge v1, v5, :cond_66

    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    aget-object v5, v0, v1

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    aget-object v5, v0, v1

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_66
    array-length v5, v0

    if-eqz v5, :cond_6a

    :goto_69
    return-object v0

    :cond_6a
    move-object v0, v4

    goto :goto_69

    :cond_6c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_73

    :goto_72
    return-object v4

    :cond_73
    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v7

    goto :goto_72
.end method

.method public getCaCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_d
    return-object v1
.end method

.method public getCaPath()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ca_path"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v1

    return-object v0

    :cond_10
    return-object v2
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_d
    return-object v1
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "domain_suffix_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapMethod()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "identity"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, "NULL"

    goto :goto_c

    :cond_11
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "NULL"

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase2Method()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "plmn"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "realm"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimNum()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "sim_num"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "subject_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V
    .registers 12

    const/4 v5, 0x0

    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_5
    if-ge v4, v7, :cond_20

    aget-object v1, v6, v4

    invoke-interface {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    iget-object v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v9, "NULL"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1a
    iget-object v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_20
    const-string/jumbo v4, "eap"

    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v6, -0x1

    invoke-direct {p0, v4, v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const-string/jumbo v4, "phase2"

    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "auth="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string/jumbo v4, "auth="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_4f
    :goto_4f
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    invoke-direct {p0, v4, v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return-void

    :cond_58
    const-string/jumbo v4, "autheap="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string/jumbo v4, "autheap="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4f
.end method

.method public resetCaCertificate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public resetClientKeyEntry()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z
    .registers 13

    const/4 v10, 0x4

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v6

    if-nez v6, :cond_9

    return v9

    :cond_9
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-eq v6, v10, :cond_12

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_43

    :cond_12
    const/4 v4, 0x1

    :goto_13
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v4, :cond_34

    const-string/jumbo v6, "anonymous_identity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    :cond_34
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    return v9

    :cond_43
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4a

    const/4 v4, 0x1

    goto :goto_13

    :cond_4a
    const/4 v4, 0x0

    goto :goto_13

    :cond_4c
    const-string/jumbo v6, "eap"

    sget-object v7, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v7, v7, v8

    invoke-interface {p1, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    return v9

    :cond_5c
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9d

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eqz v6, :cond_9d

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_97

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ne v6, v10, :cond_97

    const/4 v0, 0x1

    :goto_6f
    if-eqz v0, :cond_99

    const-string/jumbo v3, "autheap="

    :goto_74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "phase2"

    invoke-interface {p1, v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6

    :cond_97
    const/4 v0, 0x0

    goto :goto_6f

    :cond_99
    const-string/jumbo v3, "auth="

    goto :goto_74

    :cond_9d
    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-nez v6, :cond_aa

    const-string/jumbo v6, "phase2"

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6

    :cond_aa
    const-string/jumbo v6, "WifiEnterpriseConfig"

    const-string/jumbo v7, "WiFi enterprise configuration is invalid as it supplies a phase 2 method but the phase1 method does not support it."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "altsubject_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "anonymous_identity"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_11
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCaCertificateAliases([Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_e

    const-string/jumbo v2, "ca_cert"

    const-string/jumbo v3, "keystore://CACERT_"

    invoke-direct {p0, v2, v5, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    aget-object v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1e
    array-length v2, p1

    if-ge v0, v2, :cond_49

    if-lez v0, :cond_29

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_49
    const-string/jumbo v2, "ca_cert"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keystores://"

    invoke-direct {p0, v2, v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_25

    array-length v2, p1

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_22

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-ltz v2, :cond_19

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Not a CA certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    :goto_24
    return-void

    :cond_25
    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_24
.end method

.method public setCaPath(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "ca_path"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "key_id"

    const-string/jumbo v1, "USRPKEY_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "engine"

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "engine_id"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void

    :cond_2b
    const-string/jumbo v0, "engine"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "engine_id"

    const-string/jumbo v1, "keystore"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :cond_9
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_52

    array-length v2, p2

    if-lez v2, :cond_52

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-eq v2, v3, :cond_19

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "First certificate in the chain must be a client end certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    array-length v2, p2

    if-ge v0, v2, :cond_31

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-ne v2, v3, :cond_2e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "All certificates following the first must be CA certificates"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_31
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    if-nez p1, :cond_43

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Client cert without a private key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_43
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    if-nez v2, :cond_52

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Private key cannot be encoded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEapMethod(I)V
    .registers 4

    packed-switch p1, :pswitch_data_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :pswitch_10
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const-string/jumbo v0, "proactive_key_caching"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhase2Method(I)V
    .registers 4

    packed-switch p1, :pswitch_data_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return-void

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "plmn"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "realm"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSimNum(I)V
    .registers 4

    const-string/jumbo v0, "sim_num"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "subject_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string/jumbo v3, "<removed>"

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_3d
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_27

    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v2}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, v2}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v2}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method
