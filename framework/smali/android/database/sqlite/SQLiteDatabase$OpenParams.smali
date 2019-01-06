.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    }
.end annotation


# instance fields
.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mIdleConnectionTimeout:J

.field private final mLookasideSlotCount:I

.field private final mLookasideSlotSize:I

.field private final mOpenFlags:I


# direct methods
.method static synthetic -get0(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method static synthetic -get1(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .registers 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method static synthetic -get4(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .registers 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method static synthetic -get5(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .registers 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method private constructor <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iput p4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    iput p5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    iput-wide p6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-void
.end method

.method synthetic constructor <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLandroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJ)V

    return-void
.end method


# virtual methods
.method public getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public getErrorHandler()Landroid/database/DatabaseErrorHandler;
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method public getIdleConnectionTimeout()J
    .registers 3

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method public getLookasideSlotCount()I
    .registers 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method public getLookasideSlotSize()I
    .registers 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method public getOpenFlags()I
    .registers 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method public toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2

    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method
