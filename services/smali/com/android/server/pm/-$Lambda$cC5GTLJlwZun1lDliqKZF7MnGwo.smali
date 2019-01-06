.class final synthetic Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;


# direct methods
.method private final synthetic $m$0(Ljava/io/File;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$-com_android_server_pm_ShortcutDumpFiles_2649(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;->$INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;->$m$0(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
