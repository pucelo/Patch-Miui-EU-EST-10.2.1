.class public final enum Lorg/apache/miui/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/miui/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3fc00000    # 1.5f

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_0_9"

    const-string/jumbo v2, "0.9"

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_1"

    const-string/jumbo v2, "1.1"

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v1, v7, v3, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_2"

    const-string/jumbo v2, "1.2"

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1, v8, v3, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_3"

    const-string/jumbo v2, "1.3"

    const v3, 0x3fa66666    # 1.3f

    invoke-direct {v0, v1, v9, v3, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_4"

    const-string/jumbo v2, "1.4"

    const/4 v3, 0x4

    const v4, 0x3fb33333    # 1.4f

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_5"

    const-string/jumbo v2, "1.5"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v5, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_6"

    const-string/jumbo v2, "1.6"

    const/4 v3, 0x6

    const v4, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_7"

    const-string/jumbo v2, "1.7"

    const/4 v3, 0x7

    const v4, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string/jumbo v1, "JAVA_1_8"

    const-string/jumbo v2, "1.8"

    const/16 v3, 0x8

    const v4, 0x3fe66666    # 1.8f

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/miui/commons/lang3/JavaVersion;

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iput-object p4, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 2

    const-string/jumbo v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_c
    const-string/jumbo v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_18
    const-string/jumbo v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_24
    const-string/jumbo v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_30
    const-string/jumbo v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_3c
    const-string/jumbo v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_48
    const-string/jumbo v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_54
    const-string/jumbo v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_60
    const-string/jumbo v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_6c
    const/4 v0, 0x0

    return-object v0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 2

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 2

    const-class v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/miui/commons/lang3/JavaVersion;)Z
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
