.class public final Landroid/nfc/cardemulation/NfcFServiceInfo;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/NfcFServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_T3T_PMM:Ljava/lang/String; = "FFFFFFFFFFFFFFFF"

.field static final TAG:Ljava/lang/String; = "NfcFServiceInfo"


# instance fields
.field final mDescription:Ljava/lang/String;

.field mDynamicNfcid2:Ljava/lang/String;

.field mDynamicSystemCode:Ljava/lang/String;

.field final mNfcid2:Ljava/lang/String;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSystemCode:Ljava/lang/String;

.field final mT3tPmm:Ljava/lang/String;

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/nfc/cardemulation/NfcFServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v8, 0x0

    :try_start_8
    const-string/jumbo v15, "android.nfc.cardemulation.host_nfcf_service"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v15}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    if-nez v8, :cond_42

    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v16, "No android.nfc.cardemulation.host_nfcf_service meta-data"

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1c} :catch_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_3b

    :catch_1c
    move-exception v5

    :try_start_1d
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to create context for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v15

    if-eqz v8, :cond_41

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_41
    throw v15

    :cond_42
    :try_start_42
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    :goto_46
    const/4 v15, 0x2

    if-eq v6, v15, :cond_51

    const/4 v15, 0x1

    if-eq v6, v15, :cond_51

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    goto :goto_46

    :cond_51
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "host-nfcf-service"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_67

    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v16, "Meta-data does not start with <host-nfcf-service> tag"

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_67
    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v15, Lcom/android/internal/R$styleable;->HostNfcFService:[I

    invoke-virtual {v9, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :cond_9c
    :goto_9c
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v15, 0x3

    if-ne v6, v15, :cond_a9

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v4, :cond_17c

    :cond_a9
    const/4 v15, 0x1

    if-eq v6, v15, :cond_17c

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    if-ne v6, v15, :cond_ff

    const-string/jumbo v15, "system-code-filter"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ff

    if-nez v12, :cond_ff

    sget-object v15, Lcom/android/internal/R$styleable;->SystemCodeFilter:[I

    invoke-virtual {v9, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_fb

    const-string/jumbo v15, "NULL"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_fb

    const-string/jumbo v15, "NfcFServiceInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid System Code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :cond_fb
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9c

    :cond_ff
    const/4 v15, 0x2

    if-ne v6, v15, :cond_15a

    const-string/jumbo v15, "nfcid2-filter"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15a

    if-nez v7, :cond_15a

    sget-object v15, Lcom/android/internal/R$styleable;->Nfcid2Filter:[I

    invoke-virtual {v9, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v15, "RANDOM"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_155

    const-string/jumbo v15, "NULL"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_155

    invoke-static {v7}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_155

    const-string/jumbo v15, "NfcFServiceInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid NFCID2: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_155
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_9c

    :cond_15a
    const/4 v15, 0x2

    if-ne v6, v15, :cond_9c

    const-string/jumbo v15, "t3tPmm-filter"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9c

    if-nez v13, :cond_9c

    sget-object v15, Lcom/android/internal/R$styleable;->T3tPmmFilter:[I

    invoke-virtual {v9, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_9c

    :cond_17c
    if-nez v12, :cond_181

    const-string/jumbo v12, "NULL"

    :cond_181
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    if-nez v7, :cond_18a

    const-string/jumbo v7, "NULL"

    :cond_18a
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    if-nez v13, :cond_193

    const-string/jumbo v13, "FFFFFFFFFFFFFFFF"

    :cond_193
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;
    :try_end_197
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_197} :catch_1c
    .catchall {:try_start_42 .. :try_end_197} :catchall_3b

    if-eqz v8, :cond_19c

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_19c
    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    iput-object p4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    iput-object p5, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    iput-object p6, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    iput p7, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    iput-object p8, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    T3tPmm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    instance-of v1, p1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    if-nez v1, :cond_a

    return v3

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    :cond_1c
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    :cond_27
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    return v3

    :cond_32
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v3

    :cond_3d
    return v4
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcid2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    goto :goto_6
.end method

.method public getSystemCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    goto :goto_6
.end method

.method public getT3tPmm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setOrReplaceDynamicNfcid2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    return-void
.end method

.method public setOrReplaceDynamicSystemCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NfcFService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v1, :cond_37

    const-string/jumbo v1, ", dynamic System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    const-string/jumbo v1, ", NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v1, :cond_53

    const-string/jumbo v1, ", dynamic NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    const-string/jumbo v1, ", T3T PMM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v0, :cond_42

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_44

    :goto_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_37
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_42
    move v0, v2

    goto :goto_16

    :cond_44
    move v1, v2

    goto :goto_2b
.end method
