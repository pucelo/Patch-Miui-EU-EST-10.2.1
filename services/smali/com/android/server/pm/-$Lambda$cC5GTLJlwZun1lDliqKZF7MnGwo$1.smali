.class final synthetic Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$-com_android_server_pm_ShortcutDumpFiles_2877(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;->$INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
