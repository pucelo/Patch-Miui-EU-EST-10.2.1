.class Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignatureInfo"
.end annotation


# instance fields
.field private final apkSigningBlockOffset:J

.field private final centralDirOffset:J

.field private final eocd:Ljava/nio/ByteBuffer;

.field private final eocdOffset:J

.field private final signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method static synthetic -get0(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->apkSigningBlockOffset:J

    return-wide v0
.end method

.method static synthetic -get1(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->centralDirOffset:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic -get3(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocdOffset:J

    return-wide v0
.end method

.method static synthetic -get4(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->apkSigningBlockOffset:J

    iput-wide p4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->centralDirOffset:J

    iput-wide p6, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocdOffset:J

    iput-object p8, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-void
.end method
