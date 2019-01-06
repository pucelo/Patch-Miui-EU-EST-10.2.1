.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 3

    const/16 v2, 0x20

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-object v0
.end method

.method private initialize([B[B)V
    .registers 6

    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-get4()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-get0()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-void
.end method


# virtual methods
.method public computeP0()[B
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-get0()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .registers 5

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-get1()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .registers 5

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-get3()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-get2()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recreate([B)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-void
.end method
