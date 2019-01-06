.class public final Landroid/view/inputmethod/InputConnectionInspector;
.super Ljava/lang/Object;
.source "InputConnectionInspector.java"


# static fields
.field private static final sMissingMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return v1

    :cond_4
    instance-of v0, p0, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v0, :cond_9

    return v1

    :cond_9
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v0, :cond_14

    check-cast p0, Landroid/view/inputmethod/InputConnectionWrapper;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    move-result v0

    return v0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_11

    const-string/jumbo v2, "getSelectedText(int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_11
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_24

    if-nez v0, :cond_1d

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string/jumbo v2, "setComposingRegion(int, int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_24
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_37

    if-nez v0, :cond_30

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    const-string/jumbo v2, "commitCorrection(CorrectionInfo)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_37
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_4a

    if-nez v0, :cond_43

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    const-string/jumbo v2, "requestCursorUpdate(int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_4a
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_5d

    if-nez v0, :cond_56

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    const-string/jumbo v2, "deleteSurroundingTextInCodePoints(int, int)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_5d
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_6f

    if-nez v0, :cond_69

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    const-string/jumbo v2, "getHandler()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_81

    if-nez v0, :cond_7b

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    const-string/jumbo v2, "closeConnection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_93

    if-nez v0, :cond_8d

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    const-string/jumbo v2, "commitContent(InputContentInfo, Bundle)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .registers 5

    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_f
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1f

    or-int/lit8 v1, v1, 0x2

    :cond_1f
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_27

    or-int/lit8 v1, v1, 0x4

    :cond_27
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2f

    or-int/lit8 v1, v1, 0x8

    :cond_2f
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_37

    or-int/lit8 v1, v1, 0x10

    :cond_37
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3f

    or-int/lit8 v1, v1, 0x20

    :cond_3f
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_47

    or-int/lit8 v1, v1, 0x40

    :cond_47
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitContent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4f

    or-int/lit16 v1, v1, 0x80

    :cond_4f
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v2, "closeConnection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_12} :catch_16

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_16
    move-exception v0

    return v4
.end method

.method private static hasCommitContent(Ljava/lang/Class;)Z
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "commitContent"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/InputContentInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_21} :catch_25

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_25
    move-exception v0

    return v6
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "commitCorrection"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/CorrectionInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_1b

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_1b
    move-exception v0

    return v6
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "deleteSurroundingTextInCodePoints"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1c} :catch_20

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_20
    move-exception v0

    return v6
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v2, "getHandler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_12} :catch_16

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_16
    move-exception v0

    return v4
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "getSelectedText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_1b

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_1b
    move-exception v0

    return v6
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "requestCursorUpdates"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_1b

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_1b
    move-exception v0

    return v6
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "setComposingRegion"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1c} :catch_20

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :catch_20
    move-exception v0

    return v6
.end method
