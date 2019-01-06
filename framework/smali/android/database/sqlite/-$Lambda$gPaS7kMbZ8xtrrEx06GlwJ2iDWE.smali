.class final synthetic Landroid/database/sqlite/-$Lambda$gPaS7kMbZ8xtrrEx06GlwJ2iDWE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/-$Lambda$gPaS7kMbZ8xtrrEx06GlwJ2iDWE;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->-android_database_sqlite_SQLiteDatabase-mthref-0()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/-$Lambda$gPaS7kMbZ8xtrrEx06GlwJ2iDWE;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Landroid/database/sqlite/-$Lambda$gPaS7kMbZ8xtrrEx06GlwJ2iDWE;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
