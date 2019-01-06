.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field preloadDefault:Z

.field preloadPackage:Ljava/lang/String;

.field preloadPackageCacheKey:Ljava/lang/String;

.field preloadPackageLibs:Ljava/lang/String;

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_2
    array-length v10, p1

    if-ge v3, v10, :cond_12

    aget-object v0, p1, v3

    const-string/jumbo v10, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_12
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v10, :cond_345

    array-length v10, p1

    sub-int/2addr v10, v3

    if-lez v10, :cond_387

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Unexpected arguments after --query-abi-list."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_23
    const-string/jumbo v10, "--setuid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_51

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v10, :cond_39

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_39
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_51
    const-string/jumbo v10, "--setgid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7d

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-eqz v10, :cond_67

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_67
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    goto :goto_4e

    :cond_7d
    const-string/jumbo v10, "--target-sdk-version="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a9

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    if-eqz v10, :cond_93

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate target-sdk-version specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_93
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    goto :goto_4e

    :cond_a9
    const-string/jumbo v10, "--enable-jdwp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b9

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_4e

    :cond_b9
    const-string/jumbo v10, "--enable-safemode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_4e

    :cond_c9
    const-string/jumbo v10, "--enable-checkjni"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_da

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_da
    const-string/jumbo v10, "--generate-debug-info"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_eb

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_eb
    const-string/jumbo v10, "--always-jit"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fc

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_fc
    const-string/jumbo v10, "--native-debuggable"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10d

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit16 v10, v10, 0x80

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_10d
    const-string/jumbo v10, "--java-debuggable"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11e

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_11e
    const-string/jumbo v10, "--enable-jni-logging"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12f

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_12f
    const-string/jumbo v10, "--enable-assert"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_140

    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_4e

    :cond_140
    const-string/jumbo v10, "--runtime-args"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14c

    const/4 v9, 0x1

    goto/16 :goto_4e

    :cond_14c
    const-string/jumbo v10, "--seinfo="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_175

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    if-eqz v10, :cond_162

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_162
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    goto/16 :goto_4e

    :cond_175
    const-string/jumbo v10, "--capabilities="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d5

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    if-eqz v10, :cond_18b

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_18b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, ","

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b9

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iget-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    goto/16 :goto_4e

    :cond_1b9
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    goto/16 :goto_4e

    :cond_1d5
    const-string/jumbo v10, "--rlimit="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_222

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1fe

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1fe
    array-length v10, v6

    new-array v8, v10, [I

    const/4 v5, 0x0

    :goto_202
    array-length v10, v6

    if-ge v5, v10, :cond_210

    aget-object v10, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_202

    :cond_210
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-nez v10, :cond_21b

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    :cond_21b
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4e

    :cond_222
    const-string/jumbo v10, "--setgroups="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_262

    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v10, :cond_238

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_238
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    array-length v10, v7

    add-int/lit8 v5, v10, -0x1

    :goto_253
    if-ltz v5, :cond_4e

    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    aget-object v11, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_253

    :cond_262
    const-string/jumbo v10, "--invoke-with"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28a

    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v10, :cond_278

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_278
    add-int/lit8 v3, v3, 0x1

    :try_start_27a
    aget-object v10, p1, v3

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_27e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27a .. :try_end_27e} :catch_280

    goto/16 :goto_4e

    :catch_280
    move-exception v4

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "--invoke-with requires argument"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_28a
    const-string/jumbo v10, "--nice-name="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2b0

    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v10, :cond_2a0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Duplicate arg specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2a0
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    goto/16 :goto_4e

    :cond_2b0
    const-string/jumbo v10, "--mount-external-default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2be

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4e

    :cond_2be
    const-string/jumbo v10, "--mount-external-read"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2cc

    const/4 v10, 0x2

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4e

    :cond_2cc
    const-string/jumbo v10, "--mount-external-write"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2da

    const/4 v10, 0x3

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4e

    :cond_2da
    const-string/jumbo v10, "--query-abi-list"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e8

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    goto/16 :goto_4e

    :cond_2e8
    const-string/jumbo v10, "--instruction-set="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_301

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    goto/16 :goto_4e

    :cond_301
    const-string/jumbo v10, "--app-data-dir="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_31a

    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    goto/16 :goto_4e

    :cond_31a
    const-string/jumbo v10, "--preload-package"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_337

    add-int/lit8 v3, v3, 0x1

    aget-object v10, p1, v3

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    aget-object v10, p1, v3

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    aget-object v10, p1, v3

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    goto/16 :goto_4e

    :cond_337
    const-string/jumbo v10, "--preload-default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    goto/16 :goto_4e

    :cond_345
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v10, :cond_356

    array-length v10, p1

    sub-int/2addr v10, v3

    if-lez v10, :cond_387

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Unexpected arguments after --preload-package."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_356
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    if-nez v10, :cond_387

    if-nez v9, :cond_378

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected argument : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_378
    array-length v10, p1

    sub-int/2addr v10, v3

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {p1, v3, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_387
    return-void
.end method
